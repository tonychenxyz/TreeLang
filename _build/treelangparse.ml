type token =
  | ROOT
  | NODE
  | CONNECT
  | ARROW
  | EQUALS
  | DOT
  | FORWARD_OPERATION
  | BACKWARD_OPERATION
  | SUM
  | PERCENTAGE
  | INT_TYPE
  | ID of (string)
  | INT_VALUE of (int)
  | NODE_TYPE of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "treelangparse.mly"
open Ast
# 23 "treelangparse.ml"
let yytransl_const = [|
  257 (* ROOT *);
  258 (* NODE *);
  259 (* CONNECT *);
  260 (* ARROW *);
  261 (* EQUALS *);
  262 (* DOT *);
  263 (* FORWARD_OPERATION *);
  264 (* BACKWARD_OPERATION *);
  265 (* SUM *);
  266 (* PERCENTAGE *);
  267 (* INT_TYPE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  268 (* ID *);
  269 (* INT_VALUE *);
  270 (* NODE_TYPE *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\003\000\003\000\004\000\
\004\000\005\000\006\000\006\000\007\000\007\000\008\000\008\000\
\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\001\000\001\000\001\000\001\000\004\000\
\004\000\004\000\004\000\006\000\005\000\005\000\001\000\001\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\
\000\000\000\000\004\000\005\000\006\000\007\000\000\000\000\000\
\000\000\000\000\000\000\001\000\003\000\000\000\000\000\000\000\
\000\000\000\000\000\000\008\000\009\000\010\000\000\000\000\000\
\000\000\000\000\015\000\016\000\013\000\014\000\012\000"

let yydgoto = "\002\000\
\008\000\009\000\010\000\011\000\012\000\013\000\014\000\037\000"

let yysindex = "\255\255\
\001\255\000\000\251\254\252\254\253\254\008\255\010\255\000\000\
\014\000\001\255\000\000\000\000\000\000\000\000\006\255\007\255\
\015\255\009\255\254\254\000\000\000\000\011\255\013\255\012\255\
\016\255\020\255\022\255\000\000\000\000\000\000\024\255\255\254\
\255\254\017\255\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\011\000\000\000\000\000\000\000\000\000\000\000\254\255"

let yytablesize = 271
let yytable = "\001\000\
\011\000\003\000\004\000\005\000\026\000\027\000\015\000\035\000\
\036\000\016\000\017\000\018\000\006\000\020\000\007\000\019\000\
\022\000\023\000\024\000\002\000\021\000\028\000\025\000\029\000\
\032\000\030\000\033\000\031\000\034\000\039\000\038\000\000\000\
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
\000\000\011\000\011\000\011\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\011\000\000\000\011\000"

let yycheck = "\001\000\
\000\000\001\001\002\001\003\001\007\001\008\001\012\001\009\001\
\010\001\014\001\014\001\004\001\012\001\000\000\014\001\006\001\
\011\001\011\001\004\001\000\000\010\000\011\001\014\001\011\001\
\005\001\014\001\005\001\012\001\005\001\013\001\033\000\255\255\
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
\255\255\001\001\002\001\003\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\012\001\255\255\014\001"

let yynames_const = "\
  ROOT\000\
  NODE\000\
  CONNECT\000\
  ARROW\000\
  EQUALS\000\
  DOT\000\
  FORWARD_OPERATION\000\
  BACKWARD_OPERATION\000\
  SUM\000\
  PERCENTAGE\000\
  INT_TYPE\000\
  EOF\000\
  "

let yynames_block = "\
  ID\000\
  INT_VALUE\000\
  NODE_TYPE\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 21 "treelangparse.mly"
            ( _1 )
# 183 "treelangparse.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 24 "treelangparse.mly"
                ( [] )
# 189 "treelangparse.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'decls) in
    Obj.repr(
# 25 "treelangparse.mly"
               ( _1 :: _2 )
# 197 "treelangparse.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'node_type_decl) in
    Obj.repr(
# 28 "treelangparse.mly"
                   ( _1 )
# 204 "treelangparse.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'connect_decl) in
    Obj.repr(
# 29 "treelangparse.mly"
                 ( _1 )
# 211 "treelangparse.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'node_creation_decl) in
    Obj.repr(
# 30 "treelangparse.mly"
                       ( _1 )
# 218 "treelangparse.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'operation_decl) in
    Obj.repr(
# 31 "treelangparse.mly"
                   ( _1 )
# 225 "treelangparse.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 34 "treelangparse.mly"
                              ( NodeTypeDecl(Root, _2, IntType, IntType) )
# 232 "treelangparse.ml"
               : 'node_type_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 35 "treelangparse.mly"
                                     ( NodeTypeDecl(Node, _2, IntType, IntType) )
# 239 "treelangparse.ml"
               : 'node_type_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 38 "treelangparse.mly"
                                      ( ConnectDecl(_2, _4) )
# 247 "treelangparse.ml"
               : 'connect_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 41 "treelangparse.mly"
                          ( NodeCreationDecl(_1, _3, _4, None) )
# 256 "treelangparse.ml"
               : 'node_creation_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 42 "treelangparse.mly"
                                           ( NodeCreationDecl(_1, _3, _4, Some (IntLit _6)) )
# 266 "treelangparse.ml"
               : 'node_creation_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'operation) in
    Obj.repr(
# 45 "treelangparse.mly"
                                                     ( OperationDecl(_1, Forward, _5) )
# 274 "treelangparse.ml"
               : 'operation_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'operation) in
    Obj.repr(
# 46 "treelangparse.mly"
                                                      ( OperationDecl(_1, Backward, _5) )
# 282 "treelangparse.ml"
               : 'operation_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "treelangparse.mly"
        ( Sum )
# 288 "treelangparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "treelangparse.mly"
               ( Percentage )
# 294 "treelangparse.ml"
               : 'operation))
(* Entry program *)
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
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
