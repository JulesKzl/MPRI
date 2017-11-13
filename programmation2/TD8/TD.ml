module type MONAD = sig
  type +'a t
  val return : 'a -> 'a t
  val bind : 'a t -> ('a -> 'b t) -> 'b t
end

module type EXN = sig
  include MONAD
  val throw : exn -> 'a t
  val try_with : 'a t -> (exn -> 'a t) -> 'a t
  val run : 'a t -> 'a   (* peut lever une exception *)
end

module Exn : EXN = struct 
  type 'a t = Val of 'a | Exn of exn 
  let return x = Val x 
  let throw x = Exn x 
  let bind m f = match m with 
    | Val x -> f x
    | Exn x -> Exn x 
  let try_with m f = match m with 
    | Val x -> Val x 
    | Exn x -> f x 
  let run m = match m with 
    | Val x -> x
    | Exn x -> raise x
end 

let () =
  let module M = Exn in
  let m =
    M.try_with
      (M.throw (Failure "normal"))
      (fun _ ->
         M.try_with
           (M.return 42)
           (fun _ -> M.throw (Failure "pas normal")))
  in
    Printf.printf "Test exn: %d\n" (M.run m)



module type CONT = sig
  include MONAD
  val run : unit t -> unit
end

module Cont : CONT = struct 
  type 'a cont = 'a -> unit
  type 'a t = 'a cont -> unit 
  let return x = fun k -> k x 
  let bind m f = fun k -> m (fun x -> f x k)
  let run m = m (fun x -> ())
end 

let () =
  let m = Cont.bind (Cont.return 21) (fun x -> Cont.return (2*x)) in
    Cont.run
      (Cont.bind m
         (fun x -> Printf.printf "Test cont: %d\n" x ; Cont.return ()))


let rec iter g l = match l with 
  | [] -> Cont.return () 
  | x::suite -> Cont.bind (g x) (fun () -> (iter g suite))

let print_liste' x = Cont.return ((print_int x; print_string " "))

let () = Cont.run (iter print_liste' [1;2;3]) 
