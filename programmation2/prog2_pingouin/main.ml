module M : Paths.S = struct
  let (s,g) = Hex.from_channel (open_in (Sys.argv.(1)) )
  let grid : bool Hex.grid = g
  let start : Hex.pos = s
end

module T = Paths.Make(M)

let () =
(* On affiche le problème *)
let t_debut = Sys.time () in
Format.printf "**** LE PINGOUIN **** \n Problème : %s\n" (Sys.argv.(1)) ;
Format.printf "La grille initiale de taille (%d x %d) de départ (%d,%d)\n"
  (Array.length M.grid) (Array.length M.grid.(0)) (fst M.start) (snd M.start) ;
Hex.pp_grid Format.std_formatter (Hex.grid_char_of_grid_bool M.start M.grid) ;

(* On calcule le plus long chemin *)
let (max,liste) = T.maxpath M.start in
(* Affichage des résultats *)
Format.printf "RESULTAT : max = %d\n" max ;
let liste' = Hex.path_of_moves M.start liste in
T.pp_path Format.std_formatter liste' ;
let t_fin = Sys.time () in
Format.printf "temps d'exécution : %f\n" (t_fin -. t_debut) ;;
