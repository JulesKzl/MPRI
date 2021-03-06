type token =
  | EOF
  | VAR of (string)
  | STRING of (string)
  | INT of (int)
  | BIN_MULT of (string)
  | BIN_PLUS of (string)
  | BIN_CMP of (string)
  | EQUALS
  | COMMA
  | NEG
  | NOT
  | AND
  | OR
  | LET
  | IN
  | LPAR
  | RPAR

open Parsing;;
let _ = parse_error;;
# 2 "parse.mly"
  open Expr
# 25 "parse.ml"
let yytransl_const = [|
    0 (* EOF *);
  263 (* EQUALS *);
  264 (* COMMA *);
  265 (* NEG *);
  266 (* NOT *);
  267 (* AND *);
  268 (* OR *);
  269 (* LET *);
  270 (* IN *);
  271 (* LPAR *);
  272 (* RPAR *);
    0|]

let yytransl_block = [|
  257 (* VAR *);
  258 (* STRING *);
  259 (* INT *);
  260 (* BIN_MULT *);
  261 (* BIN_PLUS *);
  262 (* BIN_CMP *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\003\000\005\000\004\000\003\000\
\006\000\003\000\003\000\002\000\003\000\003\000\003\000\003\000\
\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\004\000\002\000\000\000\000\000\000\000\
\000\000\018\000\000\000\000\000\012\000\000\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\008\000\011\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\007\000\000\000\006\000\000\000\000\000"

let yydgoto = "\002\000\
\010\000\032\000"

let yysindex = "\003\000\
\055\255\000\000\248\254\000\000\000\000\055\255\055\255\008\255\
\055\255\000\000\076\000\055\255\000\000\022\255\003\255\067\255\
\000\000\055\255\055\255\055\255\055\255\055\255\055\255\055\255\
\080\255\055\255\000\000\000\000\010\255\254\254\254\254\104\255\
\022\255\113\255\031\255\000\000\093\255\000\000\055\255\104\255"

let yyrindex = "\000\000\
\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\042\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\013\000\024\000\035\000\059\000\
\049\000\054\000\000\000\000\000\000\000\000\000\000\000\063\000"

let yygindex = "\000\000\
\000\000\255\255"

let yytablesize = 344
let yytable = "\011\000\
\003\000\018\000\019\000\001\000\013\000\014\000\012\000\016\000\
\015\000\026\000\025\000\000\000\010\000\018\000\000\000\000\000\
\028\000\029\000\030\000\031\000\000\000\033\000\034\000\013\000\
\037\000\018\000\019\000\020\000\021\000\000\000\000\000\003\000\
\004\000\005\000\014\000\006\000\000\000\040\000\000\000\000\000\
\007\000\017\000\000\000\008\000\000\000\009\000\038\000\000\000\
\015\000\000\000\000\000\000\000\000\000\016\000\000\000\003\000\
\004\000\005\000\005\000\006\000\000\000\000\000\009\000\000\000\
\007\000\000\000\000\000\008\000\000\000\009\000\018\000\019\000\
\020\000\021\000\022\000\017\000\000\000\023\000\024\000\000\000\
\000\000\000\000\027\000\018\000\019\000\020\000\021\000\035\000\
\000\000\000\000\023\000\024\000\000\000\000\000\000\000\036\000\
\018\000\019\000\020\000\021\000\022\000\000\000\000\000\023\000\
\024\000\000\000\039\000\018\000\019\000\020\000\021\000\000\000\
\000\000\000\000\023\000\024\000\018\000\019\000\020\000\021\000\
\000\000\000\000\000\000\023\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\003\000\003\000\003\000\003\000\
\003\000\000\000\000\000\003\000\003\000\000\000\003\000\000\000\
\003\000\010\000\010\000\010\000\010\000\000\000\000\000\010\000\
\010\000\000\000\010\000\000\000\010\000\013\000\013\000\013\000\
\000\000\000\000\013\000\013\000\000\000\013\000\000\000\013\000\
\014\000\014\000\014\000\000\000\000\000\014\000\014\000\000\000\
\014\000\017\000\014\000\000\000\017\000\017\000\000\000\017\000\
\015\000\017\000\000\000\015\000\015\000\016\000\015\000\000\000\
\015\000\016\000\005\000\016\000\000\000\016\000\009\000\000\000\
\005\000\000\000\005\000\000\000\009\000\000\000\009\000\018\000\
\019\000\020\000\021\000\022\000\000\000\000\000\023\000\024\000"

let yycheck = "\001\000\
\000\000\004\001\005\001\001\000\006\000\007\000\015\001\009\000\
\001\001\007\001\012\000\255\255\000\000\004\001\255\255\255\255\
\018\000\019\000\020\000\021\000\255\255\023\000\024\000\000\000\
\026\000\004\001\005\001\006\001\007\001\255\255\255\255\001\001\
\002\001\003\001\000\000\005\001\255\255\039\000\255\255\255\255\
\010\001\000\000\255\255\013\001\255\255\015\001\016\001\255\255\
\000\000\255\255\255\255\255\255\255\255\000\000\255\255\001\001\
\002\001\003\001\000\000\005\001\255\255\255\255\000\000\255\255\
\010\001\255\255\255\255\013\001\255\255\015\001\004\001\005\001\
\006\001\007\001\008\001\000\000\255\255\011\001\012\001\255\255\
\255\255\255\255\016\001\004\001\005\001\006\001\007\001\008\001\
\255\255\255\255\011\001\012\001\255\255\255\255\255\255\016\001\
\004\001\005\001\006\001\007\001\008\001\255\255\255\255\011\001\
\012\001\255\255\014\001\004\001\005\001\006\001\007\001\255\255\
\255\255\255\255\011\001\012\001\004\001\005\001\006\001\007\001\
\255\255\255\255\255\255\011\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\004\001\005\001\006\001\007\001\
\008\001\255\255\255\255\011\001\012\001\255\255\014\001\255\255\
\016\001\005\001\006\001\007\001\008\001\255\255\255\255\011\001\
\012\001\255\255\014\001\255\255\016\001\006\001\007\001\008\001\
\255\255\255\255\011\001\012\001\255\255\014\001\255\255\016\001\
\006\001\007\001\008\001\255\255\255\255\011\001\012\001\255\255\
\014\001\008\001\016\001\255\255\011\001\012\001\255\255\014\001\
\008\001\016\001\255\255\011\001\012\001\008\001\014\001\255\255\
\016\001\012\001\008\001\014\001\255\255\016\001\008\001\255\255\
\014\001\255\255\016\001\255\255\014\001\255\255\016\001\004\001\
\005\001\006\001\007\001\008\001\255\255\255\255\011\001\012\001"

let yynames_const = "\
  EOF\000\
  EQUALS\000\
  COMMA\000\
  NEG\000\
  NOT\000\
  AND\000\
  OR\000\
  LET\000\
  IN\000\
  LPAR\000\
  RPAR\000\
  "

let yynames_block = "\
  VAR\000\
  STRING\000\
  INT\000\
  BIN_MULT\000\
  BIN_PLUS\000\
  BIN_CMP\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 44 "parse.mly"
             ( _1 )
# 207 "parse.ml"
               : Expr.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parse.mly"
                                   ( Int _1 )
# 214 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parse.mly"
                                   ( Var _1 )
# 221 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 49 "parse.mly"
                                   ( String _1 )
# 228 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 50 "parse.mly"
                         ( App("comma",[_1;_3]))
# 236 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    Obj.repr(
# 52 "parse.mly"
                                   ( App(_1, [_3]))
# 244 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 53 "parse.mly"
                            ( App(_1, [_3]))
# 252 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 54 "parse.mly"
                                   ( _2 )
# 259 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 55 "parse.mly"
                                   ( Let (_2,_4,_6) )
# 268 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 56 "parse.mly"
                                   ( match (_1,_3,_2) with 	
					| (Int x,Int y,"+") -> Int (x+y)
					| (Int x,Int y,"-") -> Int (x-y)
					| _ -> App(_2,[_1;_3]) )
# 280 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 61 "parse.mly"
                                   ( match (_1,_3,_2) with
                                        | (Int x,Int y,"*") -> Int (x*y)
                                        | (Int x,Int y,"/") -> Int (x/y)
                                        | _ -> App(_2,[_1;_3]) )
# 292 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 66 "parse.mly"
                                   ( match (_2,_1) with 
					| (Int x,"+") -> Int (x)
					| (Int x,"-") -> Int (-x)
					| _ -> App (_1,[_2]) )
# 303 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 70 "parse.mly"
                                   ( App (_2,[_1;_3]) )
# 312 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 71 "parse.mly"
                          ( App ("=",[_1;_3]) )
# 320 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 72 "parse.mly"
                                   ( App ("and",[_1;_3]) )
# 328 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 73 "parse.mly"
                                   ( App ("or",[_1;_3]) )
# 336 "parse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 74 "parse.mly"
                                   ( App ("not",[_2]) )
# 343 "parse.ml"
               : 'expr))
(* Entry terminated_expr *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let terminated_expr (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Expr.t)
