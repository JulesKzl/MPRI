let rec renv l = match l with 
	| [] -> [] 
	| a::suite -> (renv suite) @ [a]
;;

(* Continuation *)
let rec renv2 l c = match l with 
	| [] -> c [] 
	| a::suite -> let b l' = 
			let d = l' @ [a] in 
			c d 
		      in renv2 suite b
;;

renv2 [1;2;3] (fun x -> x);; 


(* Continuation + défonctionalisation *) 
type 'a cont = 
	| Id 
	| B of 'a * ('a cont)

let rec apply b l' = match b with 
	| Id -> l'
	| B(a,c) -> let d = l' @ [a] in apply c d 
;;

let rec renv3 l c = match l with 
	| [] -> apply c [] 
	| a::suite -> renv3 suite (B(a,c))
;;

renv3 [1;2;3] Id;;

(* Simplifaction *) 

let rec apply l l' = match l with 
	| [] -> l'
	| a::suite -> let d = l' @ [a] in apply suite d 
;;

let rec renv4 l1 l2 = match l1 with 
	| [] -> apply l2 [] 
	| a::suite -> renv4 suite (a::l2)


(* Renverser une liste par itération *) 

let renv_iter l = 
	let reste = ref l and l_ref = ref [] in  
	while !reste <> [] do 
		l_ref := (hd !reste)::(!l_ref) ; 
		reste := tl !reste 
	done; 
	l_ref 
;;

(* Renverser sans while *) 
let renv_iter2 l = 
	





let rec print_liste l = match l with 
	| [] -> print_string ""
	| a::suite -> print_int a ; print_string ";" ; print_liste suite  
;;

(* print_liste [1;2;3];; *)
print_liste (renv3 [1;2;3] Id);;	 
