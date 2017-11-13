(* type des prédicats *)
type 'a pred = 'a -> bool

let f (p : bool pred) (q: bool pred) = 
	(p true = q true) && (p false = q false) 
;;

type stream = int -> bool 

exception Exc ;;

let s (x : int) = raise Exc ; true  
;; 

let p (st : stream) = s (0) ;;


let continue m = ( fun x -> if x > m then raise Exc else true ) ;;

let find_bound (p: stream pred) = 
	let m = ref 0 in
	let stop = ref true in
	while !stop do
		try ( stop := false ; ignore (p (continue !m))) with  
			Exc -> stop := true ; incr m
	done ; 
	!m
;;

let p s = ( s 153) && (s 151) ;;

print_int (find_bound p);;
