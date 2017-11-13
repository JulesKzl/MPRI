(* Fichier compile.ml JULES KOZOLINSKY *)


(*P2 : On utilise une pile de try gérée par CaML pour savoir où nous en sommes. Pour une exception, on stocke le string dans r12 et son évaluation dans r15. Lorsque une fonction est appelée, on regarde si elle a modifié r12 ou non, pour savoir si elle a levée une exception *)


open Cparse
open List
open Printf


(* ------ DEFINITION DES REFERENCES GLOBALES (surtout pour les labels) -------------- *)
let label_string = ref ("\t .align 8 \n.uncaught:\n \t .string \"Uncaught exception \"  \n");;  (* Pour imprimer tous les string à la fin *) 
label_string := " \t .align 8 \n.pg:\n \t .string \"(\" \n"^"\t .align 8 \n.pd:\n \t .string \")\\n\" \n"^(!label_string);;

let indice_label_string = ref 0;; (* Compte le nombre de string, pour les appeler différemment *) 

let compteur_label_cmp = ref 0;; (* Pour les comparaisons *) 
let compteur_label_eif = ref 0;; (* Pour les EIF *)
let compteur_label_cif = ref 0;; (* Pour les CIF *)
let compteur_label_while = ref 0;; (* Pour les boucles while *)


let liste_fonctions = ref ["malloc"] ;; (* Liste des fonctions utilisateurs et malloc, qui répondent en 64 bits *)
let variables_globales = ref ["NULL"];; (* Liste des variables globales *)
let liste_FUN = ref [];; (* liste des fonctions utilisateurs, non sous forme de stiing, mais sous forme de FUN *)


(* --- P2 : nouvelles variables globales --- *)
let pile_try = ref [];;(* liste pour savoir dans quel try nous sommes *)
let compteur_try = ref 0;; (* compteur de try *)

let return_dans_corps_try = ref false ;;(* utile pour savoir s'il y avait un
return dans le corps d'un try, pour respecter la sémantique *)

let fonction_courante = ref "" ;; (* utile pour "Uncaught Exception", on y va
si et seulement si on a une exception non rattrapée dans la fonction main *)

let compteur_call = ref 0;; (* Pour les exceptions dans les fonctions *) 



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




(*P2 --------------FONCTIONS SUR LA PILE DES TRY ----------*)

(* Quand on rentre dans un try, on ajoute son numero (compteur_try) à la pile des try *)
let empiletry pile x = 
	pile := (x)::(!pile);;

(* Quand on sort d'un try *)
let depiletry pile = match (!pile) with 
	| [] -> failwith "La pile des try est vide"
	| a::suite -> pile := suite ; a
;;

(* Pour accéder facilement au try courant *)
let tetetry pile = match (!pile) with
        | [] -> failwith "La pile des try est vide"
        | a::suite -> a
;;






(* --------------- FONCTIONS SUR LES EXPRESSIONS ------------ *)

let rec format_mon_op mon_op l_expr env out = match mon_op with 
	  M_MINUS ->  (* M_MINUS: calcule l'opposé -e de e *)
	    		format_loc_expr l_expr env out ; 
	    		Printf.fprintf out "\t negq %%rax \n"

	| M_NOT -> (* M_NOT: calcule la négation logique ~e de e *)
		    	format_loc_expr l_expr env out ;
		    	Printf.fprintf out "\t notq %%rax \n"
	
	| M_POST_INC  -> (* M_POST_INC: post-incrémentation e++ *)
      ( match l_expr with 
        (l,VAR(x)) -> 
              (* On calcule l'expression *)
              format_loc_expr l_expr env out ;
              (* On sauvegarde la valeur de rax *)
	      Printf.fprintf out  "\t pushq %%rax \n" ;
              (* x <- x+1 et la valeur de %rax est maintenant changée (en x+1) *)
              format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_ADD,l_expr,(l,CST(1))  ))))) env out ;
              (* rax reprend sa valeur initiale *)
              Printf.fprintf out "\t popq %%rax \n" ;

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



	| M_PRE_INC -> (* M_PRE_INC: pré-incrémentation ++e *)
      ( match l_expr with
        (l,VAR(x)) ->
            	format_loc_expr l_expr env out ; 
		(* x <- x+1 et la valeur de %rax est maintenant changée (en x+1) *)
		format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_ADD,l_expr,(l,CST(1))  ))))) env out  
	| (l,OP2 ( S_INDEX,l_expr_1,l_expr_2) ) -> (* ++t[i] *)
              format_loc_expr l_expr_2 env out ;
               Printf.fprintf out "\t pushq %%rax \n";
               format_loc_expr l_expr_1 env out ;
               Printf.fprintf out "\t popq %%r10 \n";

               (* e2 dans r10, e1 dans r11 *)
               Printf.fprintf out "\t movq %%rax, %%r11 \n";
               (* e2*8 dans r10 *)
               Printf.fprintf out "\t imulq $8, %%r10 \n";
               (* e1+8*e2 dans r11 *)
               Printf.fprintf out "\t addq %%r10,%%r11 \n";
               (* t[i] <- t[i] +1 *)
               Printf.fprintf out "\t addq $1, (%%r11) \n";
               (* rax a la valeur de t[i] *)
               Printf.fprintf out "\t movq (%%r11), %%rax \n";                                
 			 | _ 	   ->  
               (* Dans le cas où ce n'est pas une variable, on ajoute 1 à l'expr située dans rax*)
               Printf.fprintf out "\t addq $1, %%rax") 
  
  
	| M_PRE_DEC ->  (* M_PRE_DEC: pré-décrémentation --e *)
     ( match l_expr with 
      (l,VAR(x)) -> 
               format_loc_expr l_expr env out ;
               (* x <- x-1 et la valeur de %rax est maintenant changée (en x-1) *)
               format_loc_expr (l,(SET_VAR (x, (l,OP2 (S_SUB,l_expr,(l,CST(1))  ))))) env out ; 

      | (l,OP2 ( S_INDEX,l_expr_1,l_expr_2) ) ->  (* --t[i] *)
              format_loc_expr l_expr_2 env out ;
              Printf.fprintf out "\t pushq %%rax \n";
              format_loc_expr l_expr_1 env out ;
              Printf.fprintf out "\t popq %%r10 \n";

              (* e2 dans r10, e1 dans r11 *)
              Printf.fprintf out "\t movq %%rax, %%r11 \n"; 
              (* e2*8 dans r10 *)
              Printf.fprintf out "\t imulq $8, %%r10 \n"; 
              (* e1+8*e2 dans r11 *)
              Printf.fprintf out "\t addq %%r10,%%r11 \n";
              (* t[i] <- t[i] -1 *)
              Printf.fprintf out "\t subq $1, (%%r11) \n"; 
              (* rax a la valeur de t[i] *)
              Printf.fprintf out "\t movq (%%r11), %%rax \n";                                
          
       | _   ->  
              format_loc_expr l_expr env out ; 
              (* Dans le cas où ce n'est pas une variable, on soustrait 1 à l'expr située dans rax*)
				    	Printf.fprintf out "\t subq $1, %%rax")  
  
 


and format_bin_op bin_op l_expr_1 l_expr_2 env out = match bin_op with
   S_MUL -> (*  S_MUL: multiplication entière *)
      (* Je calcule l'expression 2*)
      	format_loc_expr l_expr_2 env out ;
        (* j'empile le résultat *)
        Printf.fprintf out "\t pushq %%rax \n";
        (* Je caclule l'expression 1, le resultat est dans rax*)
        format_loc_expr l_expr_1 env out ;
        (* je mets le résultat de l'expression 2 (situé sur la pile pour l'instant) dans r10 *)
        Printf.fprintf out "\t popq %%r10 \n";
        (* j'effectue la multiplication et mets le résultat dans rax *)
        Printf.fprintf out "\t imulq %%r10, %%rax \n"

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
	(* appel de fonction f(e1,...,en) *)   ; 

				(*P2  la fonction appelée est suscpetible d'avoir levé une exception, dans ce cas il faut la traiter  *) 
				if (!pile_try) = [] 
				then ((*P2 Si on n'est pas dans un try et la fonction a levé une exception, alors on termine la fonction *)
					Printf.fprintf out "\t cmpq $0, %%r12 \n";
                                	Printf.fprintf out "\t je .call_pere_%d \n" !compteur_call ;

                                	Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *)
                                	Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *)
                                	Printf.fprintf out "\t ret \n" (* ret pour retourner l'adresse d'avant call *) ;

                                	Printf.fprintf out ".call_pere_%d: \n" !compteur_call )
				else ( (*P2  Sinon, nous sommes dans un try, donc on saute dans le try du dessus si la fonction a levée une exception *)
					Printf.fprintf out "\t cmpq $0, %%r12 \n";
	                                Printf.fprintf out "\t je .call_pere_%d \n" !compteur_call ;

					Printf.fprintf out "\t jmp .end_corps_try_%d \n" (List.hd(!pile_try)) ; 
					
        	                        Printf.fprintf out ".call_pere_%d: \n" !compteur_call );
				incr compteur_call; (*P2  simple gestion de label*) 


  
(* operations arithmetiques: *) 
    | OP1 (m_op,l_expr) ->  format_mon_op m_op l_expr env out 
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
	    (* P2 : on enregistre dans quelle fonction on se trouve, utile pour le "Uncaught Exception" *)
	    fonction_courante := str ;
	    Printf.fprintf out "%s: \n" str ;
            Printf.fprintf out "\t pushq %%rbp \n" ;
            Printf.fprintf out "\t movq %%rsp, %%rbp \n";

	    (* P2 : on initialise r12 au tout début *)
	    if str = "main" then Printf.fprintf out "\t movq $0, %%r12 \n"; 
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
      	List.iter (function l_code -> (format_loc_code l_code new_env out)) l_code_list ; (* On exectue le code du bloc *)
	)

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
			
  | CRETURN (opt) ->
		( match opt with 
                        | None -> () 
                        | Some (l_expr) -> format_loc_expr l_expr env out ; (* le résultat sera dans rax *) ); 

		(* P2 : Si on est dans un try, alors on a un return dans un try, on ne doit pas terminer, on saute donc au finally correspondant, sinon on termine *)
		if (!pile_try) <> [] 
		then ( (*P2 : On saute au bon try *)
			return_dans_corps_try := true ; (*P2 : On a un return dans le coprs d'un try *)
			Printf.fprintf out "\t jmp .end_corps_try_%d \n" (List.hd(!pile_try))  ; (*P2 : On saute a finally du bon try *) )
		else ( (*P2 : on termine *)
			Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *) 
			Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *) 
			Printf.fprintf out "\t ret \n" (* ret pour retourner l'adresse d'avant call *) ) 
(* return; ou return (e); *)

  | CTHROW (str,l_expr) -> (* P2 : lancer une exception *)
			format_loc_expr l_expr env out (*P2 :  On évalue l'expression de l'exception *) ; 
			Printf.fprintf out "\t movq %%rax, %%r15\n" ; (*P2 :  On met l'argument de l'exception dans r15 *) 

			(*P2  On stocke ensuite le nom de l'exception comme une chaine de caractère classique *) 
			Printf.fprintf out "\t movq $.str_%d, %%r12 \n" (!indice_label_string ); (*N on mets le label dans r12 *)
	                label_string := ("\t .align 8 \n.str_"^(string_of_int (!indice_label_string))^":\n \t .string "^"\""^(String.escaped(str)^"\" \n") )^(!label_string) ;
			incr indice_label_string ;

			(*P2 : Si l'exception est lancée dans un try, on va au handler d'excpetion du try correspondant sinon on s'arrete*)
			if (!pile_try) <> [] 
			then Printf.fprintf out "\t jmp .end_corps_try_%d \n" (List.hd(!pile_try))  (*P2 : On saute à la fin du bloc du try courant *)  
			else ((*P2 : Si on est dans la fonction main on ecrit que l'expression n'a pas été rattrapée sinon on termine pour les autres fonctions *) 
				if (!fonction_courante = "main")
        	                then Printf.fprintf out "\t jmp .excn_non_rattrapee \n"
	                        else (
					Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *)
	                	        Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *)
        	                	Printf.fprintf out "\t ret \n" (* ret pour retourner l'adresse d'avant call *) ))

  | CTRY (*P2 : rattraper une exception *)
    (l_code,(* le code du try *)
    l_catch, (* la liste des (nom_exception, var, code) pour chaque clause catch, dans l'ordre. *)
    opt) (* clause Some l_code_finally ou None *) ->

			(* P2 : gestion de la pile des try *) 
			incr compteur_try ; (*entrée dans un nouveau try *)
        		empiletry pile_try (!compteur_try) ; (*on empile l'indice de notre try *)    				

			(* P2 : le corps du try *)
			format_loc_code l_code env out ; (* Execution du code du corps du try *)

			
			(*P2 : fin du corps du try, début du handler *)
			let indice_try = depiletry pile_try in (* On dépile l'indice du try et on note l'indice *)
		        Printf.fprintf out ".end_corps_try_%d: \n" (indice_try) ; (*on marque la fin du bloc courant  *)

			Printf.fprintf out "\t pushq %%rax \n"; (* on sauvegarde rax calculé dans le corps du try *)

			(* P2 : si on a pas levé d'exception, saute au finally, sans passer par le handler *) 	
			Printf.fprintf out "\t cmpq $0, %%r12 \n"; 
			Printf.fprintf out "\t je .debut_finally_try_%d \n" (indice_try) ; 


	
			
			(*P2  HANDLER : On gere les exceptions dans les catchs *) 
			let liste_catch = ref (l_catch) in
			let compteur_catch = ref 0 in (* utile pour compter le nombre de catch *) 
			while (!liste_catch) <> [] do
				let (str1,str2,l_code_catch) = List.hd(!liste_catch) in 
				liste_catch := List.tl(!liste_catch) ;

				(*Declaration de str1 *)
				Printf.fprintf out "\t movq $.str_%d, %%rsi \n" (!indice_label_string ); (* on mets le string dans rsi pour la future comparaison *)
		                label_string := ("\t .align 8 \n.str_"^(string_of_int (!indice_label_string))^":\n \t .string "^"\""^(String.escaped(str1)^"\" \n") )^(!label_string) ;
                		incr indice_label_string ;
 
				(* Comparaison des string *) 
				Printf.fprintf out "\t movq %%r12, %%rdi \n" ; 
				Printf.fprintf out "\t call strcmp \n" ; 
				Printf.fprintf out "\t movslq %%eax, %%rax \n" ; 
				
				Printf.fprintf out "\t cmpq $0, %%rax \n" ; (* si str1 est l'exception alors rax= 0 *)
				Printf.fprintf out "\t je .cmp_str_%d_%d \n" indice_try !compteur_catch;
                        	Printf.fprintf out "\t jmp .cmp_str2_%d_%d \n" indice_try !compteur_catch;
                        	Printf.fprintf out ".cmp_str_%d_%d: \n" indice_try !compteur_catch ; 

				(*P2 : on traite l'exception *)
				(* Affectation de str2 à la valeur de r15 *)  
				let new_env  = empile env str2 in (* On modifie l'environnement CaML *)
            			Printf.fprintf out "\t subq $8, %%rsp \n"; (* On libere de la place pour str2 *) 
                                let offset = recherche new_env str2 in
                                let decalage_pile = offset*8 in
				Printf.fprintf out "\t movq %%r15 ,-%d(%%rbp) \n" decalage_pile ; (* On intialise str2 à r15 *) 
				Printf.fprintf out "\t movq $0, %%r12 \n";

				(* On execute le code du catch *) 	
				format_loc_code l_code_catch new_env out ;
				Printf.fprintf out "\t addq $8, %%rsp \n"; (* On efface l'environnement du catch *)
 
				(* On saute au finally correspondant *)
				Printf.fprintf out "\t jmp .debut_finally_try_%d \n" (indice_try) ;
				
				Printf.fprintf out ".cmp_str2_%d_%d: \n" indice_try !compteur_catch;
				incr compteur_catch; (* simple gestion de label *)
			done;
	


			(*P2 : Debut finally *)	
			Printf.fprintf out ".debut_finally_try_%d: \n" (indice_try) ; (*on marque le debut du finally *)
			
			Printf.fprintf out "\t pushq %%r12 \n"; (* On met l'exception sur la pile pour traiter le cas du return dans finally *)
                        Printf.fprintf out "\t movq $0, %%r12  \n";

			(* On regarde s'il y a du code a éxécuter dans le finally *)	
			(match opt with 
				| None -> () 
				| Some (l_code_finally) -> format_loc_code l_code_finally env out); (* Execution du code dans le finally *)	

			Printf.fprintf out "\t popq %%r12 \n"; (* On reprends notre exception *)
			Printf.fprintf out "\t popq %%rax \n"; (* On reprends le rax calculé dans le corps du try *) 	
			
			(* S'il y a un return dans le corps du try alors on l'éxécute maintenant (car le code du finally ne contenait pas de return si on arrive ici *)
			if (!return_dans_corps_try) 
			then (  return_dans_corps_try := false ; 	
				Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *)
                        	Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *)
                        	Printf.fprintf out "\t ret \n"; (* ret pour retourner l'adresse d'avant call *) );

			(* Si nous sommes encore dans un try, alors on regarde si l'on a encore une exception non levée (emise dans le corps du try correspondant *)
			if (!pile_try) <> [] 
			then (	(* On est dans un try, si on a une exception, alors on va la traiter dans le bon try *)
				Printf.fprintf out "\t cmpq $0, %%r12 \n";
				Printf.fprintf out "\t je .try_pere_%d \n" indice_try ;
				Printf.fprintf out "jmp .end_corps_try_%d \n" (List.hd(!pile_try)) ; (* On saute au try du dessus *)
                        	Printf.fprintf out ".try_pere_%d: \n" indice_try )
			else ((* On n'est pas dans un try, si on a une excpetion, on arrete la fonction, sinon on continue simplement *)
				Printf.fprintf out "\t cmpq $0, %%r12 \n";
                                Printf.fprintf out "\t je .try_pere_%d \n" indice_try ;

				Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; (* on efface ce qu'on a fait sur la pile *)
                        	Printf.fprintf out "\t popq %%rbp \n" ; (* on libère rbp *)
                        	Printf.fprintf out "\t ret \n" (* ret pour retourner l'adresse d'avant call *) ;

                                Printf.fprintf out ".try_pere_%d: \n" indice_try )

;;



let rec declare_variables_globales liste out = match liste with 
	[] -> ()
	|str::suite -> Printf.fprintf out "\t .%s: .space 8 \n" str ; declare_variables_globales suite out
;;

(*P2 Pour imprimer dans le cas d'une exception non rattrapée *)
let imprimer x out = 
	Printf.fprintf out "\t movq %s , %%rdi \n" x;
        Printf.fprintf out "\t movq $0, %%rax \n";
        Printf.fprintf out "\t callq printf \n" 
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

	(*P2 :  on saute à ce bout de code  pour les exceptions non rattrapées *) 
	Printf.fprintf out ".excn_non_rattrapee:\n";
	imprimer "$.uncaught" out; 
	imprimer "%r12" out ; 
	imprimer "$.pg" out ; 	
	imprimer "$.pd" out; 	

	(* fin de la fonction *)
	Printf.fprintf out "\t movq %%rbp, %%rsp \n" ; 
        Printf.fprintf out "\t popq %%rbp \n"; 
	Printf.fprintf out "\t ret \n" ; 
	
	(* On ecrit les string à la fin *)
	Printf.fprintf out ".section .rodata \n %s" (!label_string)
;; 
