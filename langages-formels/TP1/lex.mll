
{
  open Parse   (* ./parse.mly *)
  open Lexing  (* librairie standard *)
}

let varname = (['a'-'z']|[ '_']) (['a'-'z']|['A'-'Z']|['0'-'9']|['_']|['\''])*

let intname = ( ['0'-'9'] (['0'-'9']|['_'])*) | ( ("0x"|"0X") (['0'-'9']|['A'-'F']|['a'-'f']) (['0'-'9']|['A'-'F']|['a'-'f']|['_'])*)

let stringname = ['"']_*['"']

let opsymbols = ( '=' | '<' | '>' | "^" | '+' | "−" | "∗" | "/" | "%" |"!" | '$' |'?' |'.' | ':' |';')*

let plusname = ( '+' | '-' ) 
let multname = ( '*' | '/' | '%' )
let cmpname = ( '<' | '>' | '^' ) 
 

rule token = parse

  | "let"              { LET }
  | "="                { EQUALS }
  | "in"               { IN }
  | ","		       { COMMA }

  | "and"              { AND }
  | "or"               { OR }
  | "not"              { NOT }

  | varname as v       { VAR v }

  | stringname as s    { STRING s } 
  | intname as i       { INT (int_of_string i) }

  | "("                { LPAR }
  | ")"                { RPAR }

  | (plusname as p) opsymbols     { BIN_PLUS (Char.escaped p) }
  | (multname as m) opsymbols     { BIN_MULT (Char.escaped m) }
  | (cmpname as c) opsymbols      { BIN_CMP (Char.escaped c) }

  | [' ' '\t' '\r' '\n']+   { token lexbuf }

  | "(*" 	       { comment 1 lexbuf }
  | "*)"	       { failwith "Commentaire ouvrant manquant !"}
  | eof                { EOF }

and comment compteur = parse 
  | "*)" 	       { if compteur <= 1 
			 then token lexbuf
			 else comment (compteur-1) lexbuf }
  | "(*" 	       { comment (compteur +1) lexbuf }
  | _ 		       { comment compteur lexbuf }
  | eof 	       { failwith "Commentaire fermant manquant !" }
