open Format

type nested = 
	  F of string
	| I of nested list 
;;

let rec pp_nested pff nest = match nest with 
	F (str) -> fprintf pff "%s" str  
	|I (lst) -> let rec vide_liste liste = match liste with
			 [] -> ()
			|[a] -> pp_nested pff a ;  fprintf pff " ]" ; 
			|a::suite -> pp_nested pff a ; fprintf pff " ; " ; vide_liste suite  
		     in 
		    open_vbox 2 ; fprintf pff "[ " ; vide_liste lst ; close_box () 
;;

let bc  =   I   [ F "bbbbb";  F "ccccccccccccc"];;
let abcbc = I [F "aaa"; bc ; bc ];;
let l = I [abcbc;bc;abcbc]
let () = pp_nested Format.std_formatter l ; Format.print_newline () ;;
