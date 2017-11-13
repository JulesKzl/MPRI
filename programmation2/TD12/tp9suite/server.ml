(** Ouvre un serveur et, pour chaque client connecté,
  * lit les lignes de texte envoyées et les affiche
  * sur la sortie standard. Le port par défaut est
  * 1234 mais un autre port peut être spécifié sur
  * la ligne de commande:
  *   ./server <port>
  *)

let port =
  if Array.length Sys.argv = 2 then
    int_of_string Sys.argv.(1)
  else
    1234

let max_conn = 10

let server () = 

  let socket = Lwt_unix.socket Unix.PF_INET Unix.SOCK_STREAM 0 in
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

  let handle_client fin =
    try_lwt
      Lwt_io.printf "New client.\n" >>
      while_lwt true do
        lwt line = Lwt_io.read_line fin in
        Lwt_io.printf "server> received %S\n" line
      done
    with End_of_file -> Lwt_io.printf "End of stream.\n"
  in

  let rec loop () =
    lwt client,caller = Lwt_unix.accept socket in
    Lwt.join [handle_client (Lwt_io.of_fd Lwt_io.input client);loop ()]
  in
    loop ()

let () = Lwt_main.run (server ())
