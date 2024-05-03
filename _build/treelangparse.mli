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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
