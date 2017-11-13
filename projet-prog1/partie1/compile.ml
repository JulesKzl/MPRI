(* Fichier compile.ml JULES KOZOLINSKY *)


open Cparse
open List
open Printf

(* ------ DEFINITION DES REFERENCES GLOBALES (surtout pour les labels) -------------- *)
let label_string = ref "" ;; (* Pour imprimer tous les string à la fin *)
let indice_label_string = ref 0;; (* Compte le nombre de string, pour les appeler différemment *) 

let compteur_label_cmp = ref 0;; (* Pour les comparaisons *) 
let compteur_label_eif = ref 0;; (* Pour les EIF *)
let compteur_label_cif = ref 0;; (* Pour les CIF *)
let compteur_label_while = ref 0;; (* Pour les boucles while *) 

let liste_fonctions = ref ["malloc"] ;; (* Liste des fonctions utilisateurs et malloc, qui répondent en 64 bits *)
let variables_globales = ref ["NULL"];; (* Liste des variables globales *)
let liste_FUN = ref [];; (* liste des fonctions utilisateurs, non sous forme de string, mais sous forme de FUN *)

(* --------- Fonction auxilliaire ------------*)
let rec appartient liste x = match liste  with
	[] -> false 
	| a::suite -> a = x || (appartient suite x)
;; 

(* --- FONCTIONS SUR LA PILE ENVIRONNEMENT --- *)
	(* Details sur la pile environnement : 	
		C'est une pile surlaquelle on empile le nom de la variable et son adresse sur la Pile (Pile Assembleur) sous forme d'un couple *)

let empile pile x = match pile with 
  [] -> [(x,1)]
|(str,offset)::suite -> (x,offset+1)::pile
;; 


let rec recherche pile x = match pile with 
  [] -> -1
  | (a,offset)::suite when a = x -> offset 
  | elt::suite -> recherche suite x
;;


(* --------------- FONCTIONS SUR LES EXPRESSIONS ------------ *)

let rec format_mon_op mon_op l_expr env out = match mon_op with 
	  M_MINUS -> 
			format_loc_expr l_expr env out ; 
			Printf.fprintf out "\t negq %%rax \n" 
 (* M_MINUS: calcule l'opposé -e de e *)

	| M_NOT ->  
			format_loc_expr l_expr env out ; 
			Printf.fprintf out "\t notq %%rax \n"
 (* M_NOT: calcule la négation logique ~e de e *)
	
	| M_POST_INC  -> ( match l_expr with 
			(l,VAR(x)) -> 
				format_loc_expr l_expr env out ; 
				Printf.fprintf out  "\t pushq %%rax \n" ; (* On sauvegarde la valeur de rax *) 
				format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_ADD,l_expr,(l,CST(1))  ))))) env out ; (* x <- x+1 et la valeur de %rax est maintenant changée (en x+1) *)
				Printf.fprintf out "\t popq %%rax \n" ; (* rax reprend sa valeur initiale *)
			 | (l,OP2 ( S_INDEX,l_expr_1,l_expr_2) ) ->  
                                                        format_loc_expr l_expr_2 env out ;
                                                        Printf.fprintf out "\t pushq %%rax \n";
                                                        format_loc_expr l_expr_1 env out ;
                                                        Printf.fprintf out "\t popq %%r10 \n";
                                                        
                                                        Printf.fprintf out "\t movq %%rax, %%r11 \n"; (* e2 dans r10, e1 dans r11 *)
                                                        Printf.fprintf out "\t imulq $8, %%r10 \n"; (* e2*8 dans r10 *)
                                                        Printf.fprintf out "\t addq %%r10,%%r11 \n"; (* e1+8*e2 dans r11 *)

                                                        Printf.fprintf out "\t movq (%%r11), %%rax \n"; (* rax a la valeur de t[i] *)
                                                        Printf.fprintf out "\t addq $1, (%%r11) \n" (* t[i] <- t[i] +1 *)
                                (* t[i] ++ *)

			| _ -> () ) (* Dans ce cas, expr n'est pas une variable, la valeur est donc déjà dans %rax, on ne fait rien *)
 	(* On ne modifie pas le contenu de %rax, mais on modifie la valeur de expr si c'est une varibale*)
 (* M_POST_INC: post-incrémentation e++ *)
	
	| M_POST_DEC -> ( match l_expr with
                        (l,VAR(x)) ->
				format_loc_expr l_expr env out ; 
                                Printf.fprintf out  "\t pushq %%rax \n" ; (* On sauvegarde la valeur de rax *)
                                format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_SUB,l_expr,(l,CST(1))  ))))) env out ; (* x <- x-1 et la valeur de %rax est maintenant changée (en x-1) *)
                                Printf.fprintf out "\t popq %%rax \n" ; (* rax reprend sa valeur initiale *)
			| (l,OP2 ( S_INDEX,l_expr_1,l_expr_2) ) -> 
						        format_loc_expr l_expr_2 env out ;
						        Printf.fprintf out "\t pushq %%rax \n";
						        format_loc_expr l_expr_1 env out ;
					        	Printf.fprintf out "\t popq %%r10 \n";

						        Printf.fprintf out "\t movq %%rax, %%r11 \n"; (* e2 dans r10, e1 dans r11 *)							
							Printf.fprintf out "\t imulq $8, %%r10 \n"; (* e2*8 dans r10 *)
							Printf.fprintf out "\t addq %%r10,%%r11 \n"; (* e1+8*e2 dans r11 *)

							Printf.fprintf out "\t movq (%%r11), %%rax \n"; (* rax a la valeur de t[i] *)
							Printf.fprintf out "\t subq $1, (%%r11) \n" (* t[i] <- t[i] -1 *)
				(* t[i] -- *)
                        | _ -> () ) (* Dans ce cas, expr n'est pas une variable, la valeur est donc déjà dans %rax, on ne fait rien *)
        (* On ne modifie pas le contenu de %rax, mais on modifie la valeur de expr si c'est une varibale*)
 (*  M_POST_DEC: post-décrémentation e-- *)
  
	| M_PRE_INC -> ( match l_expr with
                        (l,VAR(x)) -> format_loc_expr l_expr env out ; format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_ADD,l_expr,(l,CST(1))  ))))) env out ; 
			   (* x <- x+1 et la valeur de %rax est maintenant changée (en x+1) *)
			 | (l,OP2 ( S_INDEX,l_expr_1,l_expr_2) ) ->  
                                                        format_loc_expr l_expr_2 env out ;
                                                        Printf.fprintf out "\t pushq %%rax \n";
                                                        format_loc_expr l_expr_1 env out ;
                                                        Printf.fprintf out "\t popq %%r10 \n";
                                                        
                                                        Printf.fprintf out "\t movq %%rax, %%r11 \n"; (* e2 dans r10, e1 dans r11 *)
                                                        Printf.fprintf out "\t imulq $8, %%r10 \n"; (* e2*8 dans r10 *)
                                                        Printf.fprintf out "\t addq %%r10,%%r11 \n"; (* e1+8*e2 dans r11 *)

                                                        Printf.fprintf out "\t addq $1, (%%r11) \n"; (* t[i] <- t[i] +1 *)
							Printf.fprintf out "\t movq (%%r11), %%rax \n"; (* rax a la valeur de t[i] *)
                                (* ++t[i] *)
			 | _ 	   ->  Printf.fprintf out "\t addq $1, %%rax")  (* Dans le cas où ce n'est pas une variable, on ajoute 1 à l'expr située dans rax*)
 (* M_PRE_INC: pré-incrémentation ++e *)
  
	| M_PRE_DEC -> ( match l_expr with
                        (l,VAR(x)) -> format_loc_expr l_expr env out ; 
					format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_SUB,l_expr,(l,CST(1))  ))))) env out ; 
                           (* x <- x-1 et la valeur de %rax est maintenant changée (en x-1) *)
			 | (l,OP2 ( S_INDEX,l_expr_1,l_expr_2) ) ->  
                                                        format_loc_expr l_expr_2 env out ;
                                                        Printf.fprintf out "\t pushq %%rax \n";
                                                        format_loc_expr l_expr_1 env out ;
                                                        Printf.fprintf out "\t popq %%r10 \n";
                                                        
                                                        Printf.fprintf out "\t movq %%rax, %%r11 \n"; (* e2 dans r10, e1 dans r11 *)
                                                        Printf.fprintf out "\t imulq $8, %%r10 \n"; (* e2*8 dans r10 *)
                                                        Printf.fprintf out "\t addq %%r10,%%r11 \n"; (* e1+8*e2 dans r11 *)
							
							Printf.fprintf out "\t subq $1, (%%r11) \n"; (* t[i] <- t[i] -1 *)
                                                        Printf.fprintf out "\t movq (%%r11), %%rax \n"; (* rax a la valeur de t[i] *)
                                (* --t[i] *)
                        | _        ->  format_loc_expr l_expr env out ; 
					Printf.fprintf out "\t subq $1, %%rax")  (* Dans le cas où ce n'est pas une variable, on soustrait 1 à l'expr située dans rax*)
 (* M_PRE_DEC: pré-décrémentation --e *)

 

and format_bin_op bin_op l_expr_1 l_expr_2 env out = match bin_op with
  S_MUL ->
	format_loc_expr l_expr_2 env out ; (* Je cacule l'expression 2*)
	Printf.fprintf out "\t pushq %%rax \n"; (* j'empile le résultat *)
	format_loc_expr l_expr_1 env out ; (* Je caclule l'expression 1, le resultat est dans rax*)
	Printf.fprintf out "\t popq %%r10 \n"; (* je mets le résultat de l'expression 2 (situé sur la pile pour l'instant) dans r10 *)
	Printf.fprintf out "\t imulq %%r10, %%rax \n" (* j'effectue la multiplication et mets le résultat dans rax *)
  (*  S_MUL: multiplication entière *)
| S_DIV -> 
	Printf.fprintf out "\t pushq %%rdx \n" ; (*sauvergarde de rdx (car utile pour la division *)

	format_loc_expr l_expr_2 env out ; (* caclule expr2 *)
        Printf.fprintf out "\t pushq %%rax \n"; (* sauvegarde d'expr2 *)
        format_loc_expr l_expr_1 env out ; (* calcule expr1 *)
	Printf.fprintf out "\t popq %%r10 \n"; (* stocke le calcul de expr2 dans r11 *)
	Printf.fprintf out "\t cqto \n"; (* transforme rax de 64 en 128 bits et le mets sur rax et rdx *)
	Printf.fprintf out "\t idivq %%r10 \n" ; (* divise le contentu de rax par r11 et stocke le quotient dans rax*)

	Printf.fprintf out "\t popq %%rdx \n" (* rdx reprends sa valeur intiale *) 
  (*    S_DIV: division entière (quotient) *)
| S_MOD -> (* même principe que la division *)
        Printf.fprintf out "\t pushq %%rdx \n" ; (*sauvergarde de rdx *)

        format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n"; (* stocke le calcule de expr2 dans r11 *)
        Printf.fprintf out "\t cqto \n"; (* transforme rax de 64 en 128 bits et le mets sur rax et rdx *)
        Printf.fprintf out "\t idivq %%r10 \n" ; (* divise le contentu de rax par r11 et stocke le reste dans rdx *)
	Printf.fprintf out "\t movq %%rdx, %%rax \n"; (* stocke le reste dans rax *)

        Printf.fprintf out "\t popq %%rdx \n"  
  (* S_MOD: division entière (reste) *)
| S_ADD -> (* même principe que la multiplication *)
	format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n";
	Printf.fprintf out "\t addq %%r10, %%rax \n" 
  (*  S_ADD: addition entière *)
| S_SUB -> (* même principe que la multiplicaiton *)
	format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n"; 
	Printf.fprintf out "\t subq %%r10, %%rax \n" 
  (* S_SUB: soustraction entière *)
| S_INDEX -> 
        format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n";

	Printf.fprintf out "\t movq %%rax, %%r11 \n";
	Printf.fprintf out "\t movq (%%r11, %%r10, 8), %%rax \n"; (* rax vaut bien ex1 +8*ex2 , ie a[i] *)
    (* S_INDEX: accès à un élément de tableau a[i] *)


and format_cmp_op cmp_op l_expr_1 l_expr_2 env out = match cmp_op with 
	C_LT -> 
        format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n";
	
	Printf.fprintf out "\t cmpq %%r10, %%rax \n" ; (* si e1 < e2 alors on saute au label(c) *) 
	Printf.fprintf out "\t jl .cmp_%d \n" (!compteur_label_cmp) ; 
	
	Printf.fprintf out "\t movq $0, %%rax \n" ; (* On atteint cette ligne si e2 <= e1, on renvoie donc faux *)  
	Printf.fprintf out "\t jmp .cmp_%d \n" (!compteur_label_cmp +1) ; (* On saute au deuxieme label, pour ne pas rentrer dans *rax <- true* *)

	Printf.fprintf out ".cmp_%d: \n" (!compteur_label_cmp) ;
	Printf.fprintf out "\t movq $1, %%rax \n" ; (* On atteint cette ligne si e1 < e2, on renvoie donc vrai *)
	Printf.fprintf out ".cmp_%d: \n" (!compteur_label_cmp +1) ;
	compteur_label_cmp := (!compteur_label_cmp) + 2 ; 	 
(* C_LT (less than) : < *)

	| C_LE -> 
        format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n";
	
	Printf.fprintf out "\t cmpq %%r10, %%rax \n" ; (* si e1 <= e2 alors on saute au label(c) *)
        Printf.fprintf out "\t jle .cmp_%d \n" (!compteur_label_cmp) ;

        Printf.fprintf out "\t movq $0, %%rax \n" ; (* On atteint cette ligne si e2 < e1, on renvoie donc faux *)
        Printf.fprintf out "\t jmp .cmp_%d \n" (!compteur_label_cmp +1) ; (* On saute au deuxieme label, pour ne pas rentrer dans *rax <- true* *)

        Printf.fprintf out ".cmp_%d: \n" (!compteur_label_cmp) ;
        Printf.fprintf out "\t movq $1, %%rax \n" ; (* On atteint cette ligne si e1 <= e2, on renvoie donc vrai *)
        Printf.fprintf out ".cmp_%d: \n" (!compteur_label_cmp +1) ;
        compteur_label_cmp := (!compteur_label_cmp) + 2 ;
(* C_LE (less than or equal to): <= *)

	| C_EQ -> 
        format_loc_expr l_expr_2 env out ;
        Printf.fprintf out "\t pushq %%rax \n";
        format_loc_expr l_expr_1 env out ;
        Printf.fprintf out "\t popq %%r10 \n";

        Printf.fprintf out "\t cmpq %%r10, %%rax \n" ; (* si e1 = e2 alors on saute au label(c) *)
        Printf.fprintf out "\t je .cmp_%d \n" (!compteur_label_cmp) ;

        Printf.fprintf out "\t movq $0, %%rax \n" ; (* On atteint cette ligne si e2 <> e1, on renvoie donc faux *)
        Printf.fprintf out "\t jmp .cmp_%d \n" (!compteur_label_cmp +1) ; (* On saute au deuxieme label, pour ne pas rentrer dans *rax <- true* *)

        Printf.fprintf out ".cmp_%d: \n" (!compteur_label_cmp) ;
        Printf.fprintf out "\t movq $1, %%rax \n" ; (* On atteint cette ligne si e1 =  e2, on renvoie donc vrai *)
        Printf.fprintf out ".cmp_%d: \n" (!compteur_label_cmp +1) ;
        compteur_label_cmp := (!compteur_label_cmp) + 2 ;
(*  C_EQ (equal): == *)


and format_loc_expr l_expr env out = match l_expr with (l,expr) -> format_expr expr env out (* On ignore les locators *)

and format_expr expr env out = match expr with
	VAR (x) ->	(let offset = recherche env x in (* On regarde si x est dans l'environnement local *)
			if offset <> -1 
			then (
				let decalage_pile = offset*8 in 
                  		Printf.fprintf out "\t movq -%d(%%rbp), %%rax \n" decalage_pile ) (* si x est var locale, on met sa valeur dans rax *)
			else ( if (appartient (!variables_globales) x) (* sinon on regarde x est une variable globale *) 
				then (Printf.fprintf out "\t movq .%s(%%rip), %%rax \n" x) (* x est une variable globale *)
				else (Printf.fprintf out "\t movq %s, %%rax \n" x) )) (* On met sur rax comme ça si ce n'est pas dans notre env, par exemple stdout *)

    | CST (n) ->  Printf.fprintf out "\t movq $%d, %%rax \n" n (* n est un entier que l'on mets directement dans rax *) 

    | STRING (str) ->
		Printf.fprintf out "\t movq $.str_%d, %%rax \n" (!indice_label_string ); (* on mets le label dans rax *)
		label_string := ("\t .align 8 \n.str_"^(string_of_int (!indice_label_string))^":\n \t .string "^"\""^(String.escaped(str)^"\" \n") )^(!label_string) ; 
		(* on écrira les labels à la fin du code assembleur, c'est pourquoi on stocke les chaines de caractères dans une référence globale CaML *)
		incr indice_label_string		
	(* une constante chaine. *) 

    | SET_VAR (str,l_expr) -> 	format_loc_expr l_expr env out ;
				let offset = recherche env str in
				let decalage_pile = offset*8 in
	
				if offset <> -1 
				then Printf.fprintf out "\t movq %%rax ,-%d(%%rbp) \n" decalage_pile (* variable locale *)
				else Printf.fprintf out "\t movq %%rax ,.%s(%%rip) \n" str (*variable globale *)
	(* affectation x=e. *) 

    | SET_ARRAY(str,l_expr_1,l_expr_2) -> 
				let offset = recherche env str in 
				let decalage_pile = offset*8 in

				format_loc_expr l_expr_2 env out ;
        			Printf.fprintf out "\t pushq %%rax \n";
	        		format_loc_expr l_expr_1 env out ;
        			Printf.fprintf out "\t popq %%r10 \n";

				( if offset <> -1 
				then Printf.fprintf out "\t movq -%d(%%rbp), %%r11 \n" decalage_pile (* On a l'addresse du tableau str dans r11 *)
				else Printf.fprintf out "\t movq .%s(%%rip), %%r11 \n" str ); (* pareil quand str est une variable globale *)

				Printf.fprintf out "\t movq %%r10, (%%r11,%%rax,8) \n";
				Printf.fprintf out "\t movq %%r10, %%rax \n" ; 
	(* affectation x[e]=e'. *)

    | CALL (str,l_expr_list) -> declare_args l_expr_list env out ;(* On caclule les parametres et on les mets dans les registres puis sur la pile *)
				Printf.fprintf out "\t movq $0, %%rax \n" ;
				Printf.fprintf out "\t .align 16 \n"; 
				Printf.fprintf out "\t callq %s \n" str;
				
				if (not (appartient !liste_fonctions str))  then (Printf.fprintf out "\t movslq %%eax, %%rax \n") 	
				(* si la fonction appelée renvoie en 32 bits on convertit la réponse *)
	(* appel de fonction f(e1,...,en) *)     
  
(* operations arithmetiques: *) 
    | OP1 (m_op,l_expr) ->   format_mon_op m_op l_expr env out 
    	(* OP1(mop, e) dénote -e, ~e, e++, e--, ++e, ou --e. *)
    
    | OP2 (b_op,l_expr_1,l_expr_2) -> format_bin_op b_op l_expr_1 l_expr_2 env out
	(* OP2(bop,e,e') dénote e*e', e/e', e%e', e+e', e-e', ou e[e']. *)

    | CMP (c_op,l_expr_1,l_expr_2) -> format_cmp_op c_op l_expr_1 l_expr_2 env out 
	(* CMP(cop,e,e') vaut e<e', e<=e', ou e==e' *)

    | EIF (l_expr_1,l_expr_2,l_expr_3) -> 			
				let c = !compteur_label_eif in (* On sauvegarde la valeur actuelle du compteur, car les opérations suivantes peuvent la modifier *)
				compteur_label_eif := (!compteur_label_eif) + 2 ; (* On se sert de 2 labels, donc on augment la valeur de 2*)
 
				format_loc_expr l_expr_1 env out ; (* On évalue e1, si e1 est vrai alors rax=1, sinon rax=0 *)
				
				Printf.fprintf out "\t cmpq $1, %%rax \n" ; (* si e1 est vrai  alors on saute au label(c) *)
        			Printf.fprintf out "\t je .eif_%d \n" c ;

        			format_loc_expr l_expr_3 env out ; (* On atteint cette ligne si e1 est faux , on renvoie donc e3 *)
        			Printf.fprintf out "\t jmp .eif_%d \n" (c +1) ; (* On saute au deuxieme label, pour ne pas rentrer dans *e1 = true* *)

        			Printf.fprintf out ".eif_%d: \n" c ;
        			format_loc_expr l_expr_2 env out ;  (* On atteint cette ligne si e1 est vrai, on renvoie donc e2 *)
        			Printf.fprintf out ".eif_%d: \n" (c +1) ;
	(* EIF(e1,e2,e3) est e1?e2:e3 *)

    | ESEQ (l_expr_list) -> ( match l_expr_list with 
			        [] -> ()
		              | l_expr::suite -> format_loc_expr l_expr env out ; format_expr (ESEQ (suite)) env out ) 
	(* e1, ..., en [sequence, analogue a e1;e2 au niveau code]; si n=0, represente skip. *)


(* utilisé pour la fonction call, calcule les arguments et les place au bon endroit (dans les registre puis sur la pile) *) 
and declare_args l_expr_list env out = 
	let reste = ref (List.rev (l_expr_list)) in 
	let n = List.length (!reste) in 
	(* On empile les argumets les arguments qui seront sur la pile, *)
	for i = 1 to (n-6) do
		let l_expr = List.hd(!reste) in
                format_loc_expr l_expr env out;
		Printf.fprintf out "\t pushq %%rax \n";
                reste := List.tl(!reste)
	done;  	
	let tab_parametres = [|"%r9";"%r8";"%rcx";"%rdx";"%rsi";"%rdi"|]  in 
	let m = List.length (!reste) in 
	(* On calcule les parametres qui seront dans les registres, tout en les empilant pour les sauvegarder *) 
	for j = (6-m) to 6-1 do  
		let registre = tab_parametres.(j) in
		let l_expr = List.hd(!reste) in
		format_loc_expr l_expr env out ; 
		Printf.fprintf out "\t movq %%rax, %s \n" registre ;
		Printf.fprintf out "\t pushq %s \n" registre;
		reste := List.tl(!reste) ;
	done;
	(* On recupere les valeurs des parametres qu'on mets dans les registres adéquats *) 
	for j = (6-1) downto (6-m) do
		let registre = tab_parametres.(j) in
		Printf.fprintf out "\t popq %s \n" registre;
	done
;;




(* ----------- FONCTIONS SUR LE CODE ------------- *)


(* place tous les arguments (situés dans les registres et sur la pile (derriere rbp)) sur la pile (devant rbp)
   En fait on mets les arguments dans notre environnement local  *)
let initialise_args decl_list env out =
        let reste = ref decl_list in
        let tab_parametres = ref ["%rdi";"%rsi";"%rdx";"%rcx";"%r8";"%r9"] in
        let i = ref 8 in
        while !tab_parametres  <> [] && !reste <> [] do
                let registe = List.hd(!tab_parametres) in
                Printf.fprintf out "\t movq %s,-%d(%%rbp) \n" registe (!i);
                i := (!i)+8 ;
                reste := List.tl(!reste) ;
                tab_parametres := List.tl(!tab_parametres) ;
        done;
        let j = ref 0 in
        while !reste <> [] do
		let l = (!j+16) in (*parametres qui sont sur la pile ?aligment *)
		Printf.fprintf out "\t movq %d(%%rbp), %%r13\n" l ;
		let k = ((!i) + (!j)) in  
                Printf.fprintf out "\t movq %%r13 ,-%d(%%rbp) \n" k ;
                j := (!j) + 8 ;
                reste := List.tl(!reste) ;
        done
;;

(* parcours de l'ast pour trouver les fonctions créees par l'utilisateur (utile pour le call) et les variables globales *) 
let rec parcours decl_list = match decl_list with 
	[] -> () 
	| (CDECL (_,str))::suite -> variables_globales := str::(!variables_globales) ; parcours suite 
	| (CFUN (a,str,b,c))::suite -> liste_fonctions :=  str::(!liste_fonctions) ; 
					liste_FUN := (CFUN (a,str,b,c))::(!liste_FUN);
					parcours suite 
;;	

(* vide la liste de déclaration, en modifiant l'env associé *)
let rec declare decl_list env out = match decl_list with 
      [] -> env 
    | decl::suite -> declare suite (format_var_declaration decl env out) out
 

and format_var_declaration decl env out= match decl with
        CDECL (l,str) -> ( 
            let new_env = empile env str in (* On modifie l'environnement CaML *)
            Printf.fprintf out "\t subq $8, %%rsp \n"; (* On libère de la place pour la déclaration *)
            new_env )
        | CFUN (l,str,decl_list,l_code) -> (
	    Printf.fprintf out "%s: \n" str ;
            Printf.fprintf out "\t pushq %%rbp \n" ;
            Printf.fprintf out "\t movq %%rsp, %%rbp \n";
	    (* Je déclare chaque parametre *)
            let new_env = declare decl_list []  out in 
	    (* Je mets tous les parametres sur ma pile, i.e. je les mets dans mon environnement local *)
	    initialise_args decl_list [] out ; 
	    (* J'execute le code *)
            format_loc_code l_code new_env out ; new_env )  

        
and format_loc_code l_code env out = match l_code with (l,code) -> format_code code env out (* J'ignore les locators *) 


and format_code code env out = match code with
    CBLOCK (decl_list,l_code_list) -> (
      let new_env = declare decl_list env out in (* On déclare les variables du bloc *)
      List.iter (function l_code -> (format_loc_code l_code new_env out)) l_code_list ) (* On exectue le code du bloc *)
  | CEXPR (l_expr) ->  
      format_loc_expr l_expr env out 
  | CIF (l_expr,l_code_1,l_code_2) -> 
	 			let c = !compteur_label_cif in (* On sauvegarde la valeur actuelle du compteur, car les opérations suivantes peuvent la modifier *)
                                compteur_label_cif := (!compteur_label_cif) + 2 ; (* On se sert de 2 labels, donc on augment la valeur de 2*)

                                format_loc_expr l_expr env out ; (* On évalue e, si e est vrai alors rax=1, sinon rax=0 *)

                                Printf.fprintf out "\t cmpq $1, %%rax \n" ; (* si e est vrai  alors on saute au label(c) *)
                                Printf.fprintf out "\t je .cif_%d \n" c ;

                                format_loc_code l_code_2 env out ; (* On atteint cette ligne si e est faux , on execute c2 *)
                                Printf.fprintf out "\t jmp .cif_%d \n" (c +1) ; (* On saute au deuxieme label, pour ne pas rentrer dans *e = true* *)

                                Printf.fprintf out ".cif_%d: \n" c ;
                                format_loc_code l_code_1 env out ;  (* On atteint cette ligne si e1 est vrai, on execute c1 *)
                                Printf.fprintf out ".cif_%d: \n" (c +1) ;
(* if (e) c1; else c2; *)

  | CWHILE (l_expr,l_code) ->  
				let c = !compteur_label_while in (* On sauvegarde la valeur actuelle du compteur, car les opérations suivantes pourraient la modifier *)
				compteur_label_while := (!compteur_label_while) +2; (* On se sert de 2 labels, donc on augmente la valeur de 2 *)

				Printf.fprintf out ".while_%d: \n" c; (* si e est vrai on reviendra ici *)
				
				format_loc_expr l_expr env out ; (* On évalue e, si e est vrai alors rax=1, sinon rax=0 *)
				Printf.fprintf out "\t cmpq $0, %%rax \n" ; (* si est faux, on sort de la boucle *)
				Printf.fprintf out "\t je .while_%d \n" (c+1) ; 
				
				format_loc_code l_code env out ; (* Si e est vrai, alors on execute le code *)
				Printf.fprintf out "\t jmp .while_%d \n" c; (* Puis on retourne au début de la boucle *)

				Printf.fprintf out ".while_%d: \n" (c+1); (* Suite *)  

(* while (e) c1; *)
			
  | CRETURN (None) -> 
		      Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *) 
		      Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *) 
		      Printf.fprintf out "\t ret \n" (* ret pour retourner l'adresse d'avant call *)
  | CRETURN (Some (l_expr)) -> 
			format_loc_expr l_expr env out ; (* le résultat sera dans rax *)
			Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *)
			Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *)
			Printf.fprintf out "\t ret \n" (* ret pour retourner l'adresse d'avant call *)
(* return; ou return (e); *)
;;


let rec declare_variables_globales liste out = match liste with 
	[] -> ()
	|str::suite -> Printf.fprintf out "\t .%s: .space 8 \n" str ; declare_variables_globales suite out
;;



(* ---------- LA FOCNTION PRINCIPALE COMPILE ------------ *)
let compile out decl_list =
	(* On cherche les fonctions déclarées par l'utilisateur et les variables globales *)
	parcours decl_list ; 
	(* On déclare les variables globales *)
	Printf.fprintf out ".data \n";
	declare_variables_globales (!variables_globales) out;
        (* en tete de l'assembleur *)
        Printf.fprintf out ".text \n";
        Printf.fprintf out ".globl main \n";		
	(* On ecrit la fonction *) 
	let _ = declare (List.rev (!liste_FUN)) [] out in
	(* On ecrit les string à la fin *)
	Printf.fprintf out ".section .rodata \n %s" (!label_string)
;; 
