(** Solution impérative, où l'on utilise des tableaux mutables
  * pour stocker les contraintes. *)

(** [reines f n] appelle [f] sur chaque solution du problème des
  * reines en taille [n]. La solution est décrite par un tableau
  * d'entiers, qui associe à chaque ligne la colonne où on a posé
  * une reine. *)
let reines f n k =
  (* Si i est une ligne pour laquelle on a posé une reine,
   * b.(i) est le numéro de colonne où on l'a mise. *)
  let b = Array.create n 0     in
  (* Contraintes associées à la solution partielle construite:
   * - c indique les colonnes libres
   * - d indique les diagonales descendantes libres
   * - e de même pour les diagonales montantes. *)
  let c = Array.create n true in
  let d = Array.create (2*n-1) true in
  let e = Array.create (2*n-1) true in
  (* En supposant qu'on a une solution partielle jusqu'à la ligne
   * i, on essaie de l'étendre au delà jusqu'à avoir une solution
   * complète. *)
  let rec search i q =
    if i=n then f k b else
	(
	let rec lFor j p = 
		if j = n then ()
		else ( if c.(j) && d.(i-j+n-1) && e.(i+j) then begin
			        b.(i) <- j ;
			        c.(j) <- false ;
			        d.(i-j+n-1) <- false ;
			        e.(i+j) <- false ;
			        search (i+1) (fun x ->  
        	                        c.(j) <- true ;
	                                d.(i-j+n-1) <- true ;
                	                e.(i+j) <- true; 
					p x  )
			      end ; 
		lFor (j+1) (fun x -> p x) ) 
	in
	lFor 0 (fun _ -> () ) ) 
  in
    search 0 (fun _ -> () ) 

let affiche b =
  let l = String.make (1 + Array.length b) ' ' in
  let d = String.make (1 + Array.length b) '-' in
    l.[Array.length b] <- '\n' ;
    d.[Array.length b] <- '\n' ;
    print_string d ;
    for i = 0 to Array.length b - 1 do
      l.[b.(i)] <- '#' ;
      print_string l ;
      l.[b.(i)] <- ' '
    done ;
    print_string d

(** Taille = 5 ou entier passé sur la ligne de commande. *)
let n = try int_of_string Sys.argv.(1) with _ -> 5

(** Fonction de test pour compter les solutions. *)
let () =
  let c = ref 0 in
  let continuation = fun _ -> () in 
  let incr _ continuation = incr c in 
    reines incr n continuation ; Printf.printf "#sol = %d\n" !c

(** Test de l'existence d'une solution. *)
(* let () =
  try
    reines (fun _ -> failwith "ok") n ;
    Printf.printf "Absence de solutions en taille %d :(\n" n
  with
    | Failure "ok" ->
        Printf.printf "Existence de solutions en taille %d :)\n" n *)
