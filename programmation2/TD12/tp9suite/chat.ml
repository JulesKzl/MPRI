
type port = int

class chat (nickname:string) ((port,remote) : port*((string*port) option))  = object (self)
  
  val max_conn = 10

  val mutable peers_out : Lwt_io.output_channel list = [] 

  method run : unit Lwt.t = 
    Lwt.join [self#interact;self#ping; self#connect ;
    (let socket = Lwt_unix.socket Unix.PF_INET Unix.SOCK_STREAM 0 in
    let addr = Unix.ADDR_INET (Unix.inet_addr_any, port) in

    begin try
	    Lwt_unix.setsockopt socket Unix.SO_REUSEADDR true ;
	    Lwt_unix.bind socket addr ;
	    Lwt_unix.listen socket max_conn ;
	    Lwt_io.printf "Listening on port %d...\n%!" port
      with
    | Unix.Unix_error (Unix.EADDRINUSE, "bind", "") ->
        Lwt.fail (Failure "port already in use")
    end >>
      
    let rec loop () =
    lwt client,caller = Lwt_unix.accept socket in
    Lwt.join [self#read_from_peer (Lwt_io.of_fd Lwt_io.input client) (Lwt_io.of_fd Lwt_io.output client);loop ()]
  in
    loop ())]

  method read_from_peer (fin : Lwt_io.input_channel) (fout : Lwt_io.output_channel) :  unit Lwt.t = 
    try_lwt
      peers_out <- (fout)::(peers_out) ; 
      while_lwt true do
        lwt line = Lwt_io.read_line fin in
        Lwt_io.printf "server -> received %S\n" line
      done
    with End_of_file -> Lwt_io.printf "End of stream.\n"

  method connect : unit Lwt.t =
   match remote with 
    | None -> Lwt.return ()
    | Some (hostname,p) -> (
       Lwt_io.printf "Client connecting...\n" >>
       let host =
	 try Unix.gethostbyname hostname
	 with| Not_found ->
        Printf.printf "Host not found." ;
        exit 2 in 
       let addr = Unix.ADDR_INET (host.Unix.h_addr_list.(0),p) in
       lwt fin,fout = Lwt_io.open_connection addr in
       self#read_from_peer fin fout >>
       Lwt_io.printf "Connected!\n"  >>
       Lwt_io.fprintf fout "Bonjour\n"
       (* for_lwt i = 1 to 10 do
             Lwt_io.fprintf fout "i = %d\n" i >>
	     Lwt_unix.sleep 0.5
       done *))

  method broadcast (str:string) : unit Lwt.t = 
    Lwt_list.iter_p (fun fout -> Lwt_io.fprintf fout "%s\n" str) peers_out 

  method ping : unit Lwt.t = 
    while_lwt true do
      self#broadcast "ping" >> 
      Lwt_unix.sleep 5. 
    done 

  method interact : unit Lwt.t = 
    let fin = Lwt_io.stdin in 
     try_lwt 
       while_lwt true do
	lwt line = Lwt_io.read_line fin in
        self#broadcast line 
	  done 
         with End_of_file -> Lwt_io.printf "End of stream.\n"


end 


let arg = match (Array.length Sys.argv) with   
  | 3 -> (int_of_string Sys.argv.(2),None)
  | 5 -> (int_of_string Sys.argv.(2), Some (Sys.argv.(3),(int_of_string Sys.argv.(4))))
  | _ -> failwith "pb arg" 

let mon_chat = new chat (Sys.argv.(1)) arg
let () = Lwt_main.run mon_chat#run  
