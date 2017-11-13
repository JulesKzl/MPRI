%{
  open Expr
%}

%token EOF

%token <string> VAR
%token <string> STRING
%token <int> INT

%token <string> BIN_MULT
%token <string> BIN_PLUS
%token <string> BIN_CMP
%token EQUALS
%token COMMA
%token NEG
%token NOT
%token AND
%token OR

%token LET EQUALS IN

%token LPAR RPAR

%left COMMA
%nonassoc LET EQUALS IN
%left OR
%left AND
%left NOT
%left BIN_CMP EQUALS
%left BIN_PLUS
%left BIN_MULT
%left NEG

/* Les non-terminaux par lesquels l'analyse peut commencer,
 * et la donnée de leurs types. */

%start terminated_expr
%type <Expr.t> terminated_expr

%%

terminated_expr:
  | expr EOF { $1 }

expr:
  | INT                            { Int $1 }
  | VAR                            { Var $1 }
  | STRING                         { String $1 }
  | expr COMMA expr 		   { App("comma",[$1;$3])}

  | VAR LPAR expr COMMA RPAR       { App($1, [$3])}
  | VAR LPAR expr RPAR 		   { App($1, [$3])}
  | LPAR expr RPAR                 { $2 }
  | LET VAR EQUALS expr IN expr    { Let ($2,$4,$6) }
  | expr BIN_PLUS expr             { match ($1,$3,$2) with 	
					| (Int x,Int y,"+") -> Int (x+y)
					| (Int x,Int y,"-") -> Int (x-y)
					| _ -> App($2,[$1;$3]) }

  | expr BIN_MULT expr             { match ($1,$3,$2) with
                                        | (Int x,Int y,"*") -> Int (x*y)
                                        | (Int x,Int y,"/") -> Int (x/y)
                                        | _ -> App($2,[$1;$3]) }

  | BIN_PLUS expr %prec NEG        { match ($2,$1) with 
					| (Int x,"+") -> Int (x)
					| (Int x,"-") -> Int (-x)
					| _ -> App ($1,[$2]) }
  | expr BIN_CMP expr              { App ($2,[$1;$3]) }
  | expr EQUALS expr 		   { App ("=",[$1;$3]) }	
  | expr AND expr                  { App ("and",[$1;$3]) }
  | expr OR expr                   { App ("or",[$1;$3]) }
  | NOT expr                       { App ("not",[$2]) }
