
type pos = int * int
type 'a grid = 'a array array

(** Directions *)

type dir = N | NE | SE | S | SW | NW

let dir_to_string (d:dir) : string = match d with
  | N -> "N"
  | NE -> "NE"
  | SE -> "SE"
  | S -> "S"
  | SW -> "SW"
  | NW -> "NW"

(** Liste de toutes les directions possibles *)
let all_directions : dir list = [N;NE;SE;S;SW;NW] ;;

(** Mouvements *)

type move = dir * int

let move (p:pos) (d:dir) : pos =
  let (i,j) = p in
  match d with
  | N -> (i-1,j-(i mod 2))
  | NE -> (i-1,j+((i+1) mod 2))
  | SE -> (i,j+1)
  | S -> (i+1,j+((i+1) mod 2))
  | SW -> (i+1,j-(i mod 2))
  | NW -> (i,j-1)
;;

let rec move_n (p: pos) (m:move) : pos =
  let (d,n) = m in
  if n = 0
  then p
  else move_n (move p d) (d,n-1)
;;



(** [path_of_moves p moves] est la liste des positions
  * obtenues par applications successives des mouvements
  * de [moves] à partir de [p]. *)
let rec path_of_moves (p:pos) (moves: move list) : pos list = match moves with
  | [] -> []
  | m::suite -> let p' = move_n p m in (* mets on les positions entre p et p'?*)
                p'::(path_of_moves p' suite)
;;

(** Entrées/sorties *)

(** Affichage d'une grille de caractères. *)
let pp_grid (_ :Format.formatter) (grid:char grid) : unit =
  let n = Array.length grid in
  let m = Array.length grid.(0) in
  for i = 0 to (n-1) do
    if (i mod 2) = 0 then Format.printf " " ;
    for j = 0 to (m-1) do
      Format.printf "%c " grid.(i).(j)
    done;
    Format.printf "\n"
  done
;;

(** Transforme une grille char en bool *)
let grid_char_of_grid_bool (start: pos) (g:bool grid) : char grid =
  let gc = Array.make_matrix (Array.length g) (Array.length g.(0)) ' ' in
  for l = 0 to Array.length g - 1 do
    for c = 0 to Array.length g.(0) - 1 do
      if (l,c) = start then gc.(l).(c) <- '#'
      else if g.(l).(c) then gc.(l).(c) <- 'x'
      else gc.(l).(c) <- ' '
    done
  done;
  gc
 ;;

(** Lecture d'une grille sur un in_channel.
  * La grille produite devra toujours avoir un pourtour
  * vide, même si cela n'est pas le cas dans le problème
  * d'entrée. *)
let from_channel (f:in_channel) : (pos * (bool grid)) =
  (* On sauvegarde les vraies lignes *)
  let lines = ref [] in

  (* 1ere lecture pour trouver la taille de la matrice de retour
   * et s'assurer du balisement *)
  (* j_max est la longueur maximale d'une ligne *)
  let j_max = ref 0 in
  (* i_j_max est la ligne qui est de longueur maximale *)
  let i_j_max = ref 0 in
  (* i_max est le nombre de ligne écrites à coder dans la matrice retour *)
  let i_max = ref 0 in

  (* Après la balise, il peut y avoir des lignes non écrites à ne pas prendre
   * en compte *)
  let first_line_founded = ref false in
  let first_line_shift = ref false in

  (* On ignore la balise ouvrante <problem> *)
  ignore (input_line f);
  (try
    (* On parcout les lignes *)
    while true do
      let line = input_line f in
      let n = (String.length line) in

      (* On regarde si la ligne parcourue est la première véritable ligne *)
      if (not (!first_line_founded)) then (
        (* On cherche si la ligne est vide, si elle ne l'est pas on regarde
        quand elle commence *)
        let j = ref 0 in
        while !j< n && line.[!j] == ' ' do incr j done;
        if !j < n
        then (
          first_line_shift := ((!i_max + !j) mod 2) = 1;
	        first_line_founded := true
          ));

      if !first_line_founded then (
        if !j_max < n  && line <> "</problem>"
        then (
          (i_j_max := !i_max;
           j_max := n));

        (* On rajoute ces lignes "effectives" au fichier, on rajoute peut-être
        des lignes vides au début *)
        lines := line::(!lines) ;
        incr i_max
        )
    done
  with
    | End_of_file -> ());


  (* On supprime alors la derniere ligne *)
  lines := "" :: (List.tl !lines);
  (* On change le nombre de ligne en fonction du décalage, on rajoute en
  effet des lignes d'eau en bas en haut, et sur les cotés*)
  let decalage = (if !first_line_shift then 2 else 1) in
  i_max := !i_max + decalage ;
  i_j_max := !i_j_max + decalage ;
  j_max := (!j_max)/2 + !i_j_max mod 2 + 2  ;


  let resultat = Array.make_matrix !i_max !j_max false in
  let start = ref (0,0) in

  (* 2e lecture pour remplir la matrice résultat, on lit les lignes à l'envers*)
  while !lines <> [] do
    i_max := !i_max - 1;
    match !lines with
      | [] -> failwith "impossible, mais évitons le warning "
      | line::suite -> (
    let j = ref (1 - !i_max mod 2)  in
    let c = ref 1 in

    while !j < String.length line do
      begin
	match line.[!j] with
	|' ' -> ()
	|'#' -> start := (!i_max,!c)
	|_ -> resultat.(!i_max).(!c) <- true
      end;
      c := !c + 1;
      j := !j + 2
    done;
    lines := suite );
  done;
  (!start,resultat)
