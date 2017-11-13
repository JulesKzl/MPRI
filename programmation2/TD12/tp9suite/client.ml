(** Se connecte à un serveur et y envoie 10 lignes
  * de texte. Le nom de l'hôte et le port sont
  * par défaut "127.0.0.1",1234, mais peuvent être
  * spécifiés sur la ligne de commande:
  *   ./client <hostname> <port>
  *)

let hostname,port =
  if Array.length Sys.argv = 3 then
    Sys.argv.(1), int_of_string Sys.argv.(2)
  else
    "127.0.0.1",1234

let host =
  try
    Unix.gethostbyname hostname
  with
    | Not_found ->
        Printf.printf "Host not found." ;
        exit 2

let client () =
  Lwt_io.printf "Client connecting...\n" >>
  let addr = Unix.ADDR_INET (host.Unix.h_addr_list.(0), port) in
  lwt fin,fout = Lwt_io.open_connection addr in
  Lwt_io.printf "Connected!\n" >>
  for_lwt i = 1 to 10 do
    Lwt_io.fprintf fout "i = %d\n" i >>
    Lwt_unix.sleep 0.5
  done

let () =
  Lwt_main.run (client ())
