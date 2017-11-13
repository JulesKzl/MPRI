let rec fact x = if x = 0 then 1 else x * fact (x-1)
let f_fact fact x = if x = 0 then 1 else x * fact (x-1)

let rec make_rec f_phi x = f_phi (make_rec f_phi) x
let fact' = make_rec f_fact
let () =
  (* Test: fact et fact' coincident sur 1, 2, 3, 4. *)
  assert (List.fold_left (fun b i -> b && fact i = fact' i) true [1;2;3;4])


let make_rec_memo f_f =
  let table = Hashtbl.create 23 in
  let rec f x =
    try Hashtbl.find table x with
      | Not_found ->
          let r = f_f f x in
            Hashtbl.add table x r ;
            r
  in f

let fact'' = make_rec_memo f_fact
let () =
  (* Test: fact' et fact'' coincident sur 1, 2, 3, 4. *)
  assert (List.fold_left (fun b i -> b && fact' i = fact'' i) true [1;2;3;4])




module type T = sig
  class c : object
  	method compute : int -> int
  end
end


module Memo (M:T) : T  = struct 

	let table = Hashtbl.create 23

	class c = 
	object (s) inherit M.c as super 
		method compute n =  try Hashtbl.find table n with 
					| Not_found -> let r = super#compute n in 
							Hashtbl.add table n r ;
							r
			(* Printf.printf "Coucou \n";  super#compute n *)
		
	end 	

end 

module Fibo : T = struct 
	class c  = 
	object (s) 
		method compute n = 
		Printf.printf("Appel Compute \n");
		match n with 
			| 0 -> 0
			| 1 -> 1 
			| _ -> s#compute (n-1) + s#compute (n-2) 
	end	
end


let () = 
	let module G = Memo(Fibo) in 	
	Printf.printf "%d\n" ((new G.c)#compute 4)
 ;;
