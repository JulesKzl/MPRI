exception Stop_it_now

module type S = sig
  val grid : bool Hex.grid
  val start : Hex.pos
end

let compteur_enfile = ref 0 ;;
let compteur_defile = ref 0 ;;

module Make (M : S) = struct

  (* L'ensemble F adapté *)
  module F : Bitset.FIN with type t = Hex.pos = struct
    type t = Hex.pos
    let max = (Array.length M.grid)*(Array.length M.grid.(0))
    let to_int (x:t) : int =
      let (i,j) = x in
      i*(Array.length M.grid.(0)) + j

    let of_int (k:int) : t =
    (k/(Array.length M.grid.(0)),k mod (Array.length M.grid.(0)))

  end

  (** Ensembles de cases servant pour les configurations *)
  module HSet : Bitset.SET with type elt = Hex.pos = Bitset.Make(F)



  (** Convertit un HSet en une matrice de booléens *)
  let hset_to_bool_grid (s:HSet.t) : bool Hex.grid =
    let n = Array.length M.grid and m = (Array.length M.grid.(0)) in
    let g = Array.make_matrix n m false in
    for i = 0 to n-1 do
      for j = 0 to m-1 do
        if HSet.member s (i,j) then g.(i).(j) <- true
      done;
    done;
  g

  (** Convertit une matrice de booléens en un HSet *)
  let bool_grid_to_hset (g : bool Hex.grid) : HSet.t =
    HSet.init (fun x -> M.grid.(fst x).(snd x))

  (** Affichage d'un chemin sous la forme d'une liste
    * de positions. Le chemin devra apparaitre, sur la grille
    * [M.grid] où les cases de glace sont représentées par '*',
    * selon une numérotation des cases du chemin par
    *   a ... z A ... Z 0 ... 9 puis ? pour les éventuelles
    *                                cases suivantes. *)
  let pp_path (o:Format.formatter) (l:Hex.pos list) : unit =
    let g = M.grid in
    let n = (Array.length g) and m = (Array.length g.(0)) in
    let gc = Array.make_matrix n m ' ' in
    let liste = ref l in
    let liste_car =   ['a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';
                        'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';
                        'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';
                        'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z';
                        '0';'1';'2';'3';'4';'5';'6';'7';'8';'9'] in
    let liste_car_i = ref liste_car in
    while !liste <> [] do
      if !liste_car_i = [] then liste_car_i := liste_car ;
      let (i,j) = List.hd (!liste) in
      gc.(i).(j) <- List.hd (!liste_car_i) ;
      liste := List.tl (!liste) ;
      liste_car_i := List.tl (!liste_car_i)
    done;

    (* On remplit les autres cases de glace qui ne sont pas dans l *)
    for i = 0 to (n-1) do
      for j = 0 to (m-1) do
        if g.(i).(j) && (gc.(i).(j) = ' ')
        then gc.(i).(j) <- '*'
      done;
    done;
    Hex.pp_grid o gc


  (** Liste de tous les mouvements faisables sur la configuration
    * donnée par un ensemble et une position (non présente dans
    * l'ensemble). *)
  let all_moves (s:HSet.t) (x:Hex.pos) : Hex.move list =
    let resultat = ref [] in
    let liste = ref Hex.all_directions in
    while !liste <> [] do
      let d = List.hd (!liste) in
      let i = ref 1 in
      let p = ref (Hex.move x d) in
      while (HSet.member s !p) do
        resultat := (d,!i)::!resultat ;
        incr i ;
        p := (Hex.move !p d) ;
      done ;
      liste := List.tl (!liste)
    done;
    !resultat


  (** [accessible set elt] renvoie le sous-ensemble
    * correspondant à la composante connexe de [elt]. *)
  let accessible (s:HSet.t) (x:HSet.elt) : HSet.t =
    let resultat = ref HSet.empty in
    let rec accessible_aux y dir_list =
    match dir_list with
      | [] -> ()
      | d::suite -> let p = Hex.move y d in
                    if HSet.member s p
                    then (
                      if not (HSet.member !resultat p)
                      then (resultat := HSet.add (!resultat) p ;
                            accessible_aux p Hex.all_directions ) );
                    accessible_aux y suite
    in
    accessible_aux x Hex.all_directions ;
    !resultat

  (* Renvoie les voisins de x dans s *)
  let neighbours (s:HSet.t) (x:HSet.elt) : HSet.elt list =
      let liste_dir = ref Hex.all_directions in
      let liste_pos = ref [] in
      (* On calcule les positions dans s autour de x *)
      while !liste_dir <> [] do
        let d = List.hd (!liste_dir) in
        let y = Hex.move x d in
        (if HSet.member s y
        then liste_pos := y::(!liste_pos)) ;
        liste_dir := List.tl (!liste_dir)
      done;
      !liste_pos

  (** Si [set] a été déconnecté par la suppression de [elt],
    * renvoie la liste des nouvelles composantes connexes.
    On regarde les cases autour de x, on fait un parcourt et on grille les
    cases déjà vus*)
 let split (s:HSet.t) (x: Hex.pos) : HSet.t list =
    let liste_resultat = ref [] in
    let liste_pos = ref (neighbours s x) in
    (* On calcule les composantes connexes pour chacune *)
    while !liste_pos <> [] do
      let p = List.hd (!liste_pos) in
      (* s_p est la composante connexe à laquelle appartient p *)
      let s_p = HSet.add (accessible s p) p in

      (* On ajoute la novuelle composante connexe à la liste *)
      liste_resultat := s_p::(!liste_resultat) ;
      (* On supprime certaines positions déjà présente dans cette cc*)
      liste_pos := List.tl (!liste_pos) ;
      let liste_pos_p = ref (!liste_pos) in
      liste_pos := [] ;
      while !liste_pos_p <> [] do
        let p' = List.hd (!liste_pos_p) in
        (* Si la position n'est pas dans la cc, alors il faudra calculer
        sa cc *)
        if not (HSet.member s_p p') then liste_pos := (p')::(!liste_pos) ;
        liste_pos_p := List.tl (!liste_pos_p);
      done;
    done;
    !liste_resultat


  (* On gère la priorité *)
  module O: Priority.ORDERED with type t = (int*int) = struct
    (* x est le nombre de case restantes et y le nombre de case consommées *)
    type t = int*int
    let compare (a:t) (b:t) : int =
      let (xa,ya) = a and (xb,yb) = b in
      (2*xb + yb) - (2*xa + ya)
  end

  (* Le module Priorité *)
  module Prio = Priority.Make(O)

  (* Fonctions de débuggages *)
  let debug_enfile file noeud compteur_enfile =
    incr compteur_enfile ;
    Format.printf "******************************************************\n" ;
    Format.printf "On empile\nID = %d\n" !compteur_enfile ;
    Format.printf "Taille de la file : %d \n" (Prio.size file) ;
    Format.printf "key = (%d,%d) \n" (fst (Prio.key noeud))
                                     (snd (Prio.key noeud));
    Format.printf "value = " ;
    let g_debug = hset_to_bool_grid (fst (Prio.value noeud)) in
    Hex.pp_grid Format.std_formatter
      (Hex.grid_char_of_grid_bool (snd (Prio.value noeud)) g_debug) ;
    Format.printf "_______________________________________________________\n"

  let debug_defile file hashpath noeud compteur_defile =
    incr compteur_defile ;
    Format.printf "******************************************************\n" ;
    Format.printf "On depile\nID = %d\n" !compteur_defile ;
    Format.printf "Taille de la file : %d \n" (Prio.size file) ;
    Format.printf "key = (%d,%d) \n" (fst (Prio.key noeud))
                                     (snd (Prio.key noeud));
    let (_,(pi,pj),_,_) = Hashtbl.find hashpath (Prio.value noeud) in
    Format.printf "papa = (%d,%d) \n" pi pj ;
    Format.printf "value = " ;
    let g_debug = hset_to_bool_grid (fst (Prio.value noeud)) in
    Hex.pp_grid Format.std_formatter
      (Hex.grid_char_of_grid_bool (snd (Prio.value noeud)) g_debug) ;
    Format.printf "________________________________________________________\n"




  (* Cette fonction enfile les configurations (connexes) à partir de p *)
  let enfile_cc file hashpath state (p:Hex.pos) (s:HSet.t) (conso:int) : unit =
    (* Les configurations doivent être des composantes connexes *)
    let liste_cc = ref (split s p) in
    (* On ajoute la ou les nouvelles configurations crée(s) après le move *)
    while !liste_cc <> [] do
      let s_i = List.hd (!liste_cc) in
      let value_i = (s_i,p) in
      (* On regarde si on a déjà vu cette configuration ou non *)
      if Hashtbl.mem hashpath value_i
      then (
        (* Dans le cas où on a déjà vu la configuration, on regarde si
          notre "nouvelle configuration" est meilleure *)
          let (x,y,z,t) = (Hashtbl.find hashpath value_i) in
          if t < conso
          then (
            (* Dans ce cas, la configuration déjà calculée était moins
              bien que la nouvelle, on change donc la valeur dans la table de
              hachage *)
              Hashtbl.add hashpath value_i state ;
              (* Si l'ancienne configuration est dans la file de priorité, on
              la supprime et on mets notre nouvelle configuration *)
              let old_node = Prio.create_node (HSet.cardinal s_i,t) (s_i,p) in
              if Prio.member file old_node
              then (Prio.remove file old_node ;
                    ignore (Prio.insert file (HSet.cardinal s_i,conso) (s_i,p))
                (** DEBUG : SUPPRIMER LA LIGNE DU DESSUS **)
                (* let _ = Prio.insert file (HSet.cardinal s_i,conso) (s_i,p) in
                  debug_enfile file noeud_i compteur_enfile *))

            )
          else (
            (* L'ancienne configuration est pareil ou mieux : on ne change pas
            la table de hachage et ne l'ajoute pas à la file de priorité
            (Soit l'ancienne configuration est dans la file soit elle a déjà été
            traitée !) *) (* J'aurais pu simplifier le code, en cumulant les if
            then else, mais je trouvais ça plus clair *)
            ()
            )
        )
      (* Sinon on associe un état à notre configuation *)
      else (
        Hashtbl.add hashpath value_i state ;
        (* On remplit la file de priorité avec la nouvelle configuration *)
        ignore (Prio.insert file (HSet.cardinal s_i,conso) value_i)
        (** DEBUG : SUPPRIMER LA LIGNE DU DESSUS **)
        (* let noeud_i = Prio.insert file (HSet.cardinal s_i,conso) value_i in
        debug_enfile file noeud_i compteur_enfile*) );
      liste_cc := List.tl (!liste_cc)
    done


  (** Calcul de la solution optimale à partir d'une position
    * donnée. L'entier est simplement la longueur de la liste
    * de mouvements à effectuer. *)
  let maxpath (x:Hex.pos) : int * Hex.move list =
    let max = ref 0 in
    let path_liste = ref [] in

    (* INITIALISATION : On crée la file et le HMap.
      On enfile aussi la (ou les) configurations en partant de la case
      initiale *)
    (* L'ensemble s des positions au début *)
    let s_init = bool_grid_to_hset M.grid in
    Format.printf "Nombre de cases : %d\n" (HSet.cardinal s_init);
    (* La donnée initiale de la file *)
    let value_dummy = (s_init,x) in
    (* la Hastable pour reconstituer le chemin :
      Elle envoie une configuration sur
      une autre configuration, une direction et un nombre de case consommés *)
    let hashpath  = Hashtbl.create 9000 in
    (* La file de priorité *)
    let file = Prio.create 10000000 (0,0) value_dummy in
    (* On remplit la file de priorité avec la première configuration *)
    let state_dummy = (s_init,x,(Hex.N,0),0) in
    enfile_cc file hashpath state_dummy x s_init 0;

    try (
  (* BOUCLE PRINCIPALE *)
   (* Tant que la file n'est pas vide, il reste des configurations à explorer *)
    while (Prio.size file) > 0 do
      (* On extrait le noeud de plus haute priorité *)
      let noeud = Prio.extract_min file in
      (* debug_defile file hashpath noeud compteur_defile ;*)
      (* On pose les valeurs du noeud *)
      let (s,start) = Prio.value noeud in
      let (rest,conso) = Prio.key noeud in

      (* s'il reste qu'une case à parcourir, sachant que la configuration
      est connexe, c'est une feuille du parcourt ! On peut regarder si
      cette solution est optimale *)
      if rest = 1
      then ( (* Dans ce cas on peut calculer le chemin + long *)
            if (conso+1) > !max
            then (
              (* Il ne reste plus qu'une direction possible *)
              let move_ret = List.hd (all_moves s start) in
              (* La valeur d'un noeud correspondant *)
              let value_ret = ref (s,start) in
              path_liste := [move_ret] ;
              (* On récurse à la main grâce à la table de hachage *)
              while !value_ret <> value_dummy do
                let state = Hashtbl.find hashpath !value_ret in
                let (x,y,z,_) = state in
                (* Format.printf " y = (%d,%d)" (fst y) (snd y) ;
                let g_debug = hset_to_bool_grid x in
                Hex.pp_grid Format.std_formatter
                (Hex.grid_char_of_grid_bool y g_debug) ; *)
                path_liste := z::!path_liste ;
                value_ret := (x,y) ;
              done;
              max := conso+1 ;
              if !max = HSet.cardinal s_init
              then raise Stop_it_now ;

              (* 1ere amélioration possible (en fait c'est nul):
              on supprime les éléments de la file de priori tels que
              rest + conso < max *)
              Prio.remove_key (fun (x,y) -> x+y < !max) file
              );)

      (* Il y a plus d'une case, on continue le parcourt *)
      else (
        (* La liste des mouvements possibles à partir de start *)
        let move_liste = ref (all_moves s start) in
        (* On enfile alors toutes les configurations dans la file *)
        while !move_liste <> [] do
          let move = List.hd (!move_liste) in
          (* La position p est un des possitions accessibles depuis start *)
          let p = Hex.move_n start move in
          (* s' représente la nouvelle configuration *)
          let s_p = HSet.remove s p in
          (* On enfile la ou les les configurations connexes à partir de p *)
          let state_p = (s,start,move,conso+1) in
          enfile_cc file hashpath state_p p s_p (conso+1);
          move_liste := List.tl (!move_liste)
        done
        )
    done;
    (!max,!path_liste)) with
    | Stop_it_now -> (!max,!path_liste);


end
