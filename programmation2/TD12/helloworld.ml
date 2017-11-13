let rec repete s n = match n with 
  | 0 -> Lwt.return ()
  | _ -> Lwt.bind (repete s (n-1)) (fun () -> Lwt_io.printf "%d.%s\n" n s )


let repete2 s n = 
  for_lwt i = 1 to n do 
      (Lwt_io.printf "%d.%s\n" i s) 
  done 


let () =
  (* Lwt_main.run (Lwt_io.printf "Hello, monde.\n") 
  Lwt_main.run (repete "wesh" 10) ;
  Lwt_main.run (repete "hallo" 11) ; *)
  Lwt_main.run (Lwt.join [repete "wesh" 10;repete "hallo" 11]) ; 
  Lwt_main.run (repete2 "coucou" 9)
 


let timeout t k p = 
  Lwt.pick [((Lwt_unix.sleep t) >> k ());p]

let kill () =
  Lwt_io.printf "Game over!\n" >>
  Lwt.fail (Failure "over")

let rec f () =
  Lwt_io.printf "Vite, une ligne!\n> " >>
  lwt l = timeout 1. (kill) (Lwt_io.read_line Lwt_io.stdin) in
  Lwt_io.printf "Merci pour ces %d caractères...\n\n" (String.length l) >>
  f ()

let () = Lwt_main.run (f ())
 
