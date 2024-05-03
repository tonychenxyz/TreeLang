open Sast
open Llvm

(* Intermediate representation of values *)
type ir_value =
  | IRInt of int

(* Intermediate representation of nodes *)
type ir_node = {
  node_type: node_type;
  name: string;
  mutable forward_value: ir_value option;
  mutable backward_value: float option;
}

(* Intermediate representation of declarations *)
type ir_decl =
  | IRConnectDecl of string * string
  | IRNodeCreationDecl of string * node_type * string * ir_value option
  | IROperationDecl of node_type * direction * operation

(* Intermediate representation of the whole program *)
type ir_program = {
  mutable nodes: ir_node list;
  mutable decls: ir_decl list;
  mutable llmodule: Llvm.llmodule;
  mutable llbuilder: Llvm.llbuilder;
  mutable llcontext: Llvm.llcontext;
}

(* Converts Sast expressions to IR values and LLVM values *)
let rec gen_expr ir_program (typ, sx) =
  match sx with
  | SIntLit l ->
    let llval = Llvm.const_int (Llvm.i32_type ir_program.llcontext) l in
    IRInt l

(* Finds a node in the IR program by its name *)
let find_node_by_name ir_program name =
  List.find (fun node -> node.name = name) ir_program.nodes

(* Generates IR declarations from Sast declarations *)
let gen_decl ir_program = function
  | SConnectDecl (parent, child) -> IRConnectDecl (parent, child)
  | SNodeCreationDecl (parent, node_type_str, name, value_opt) ->
    let node_type = match node_type_str with
      | "Root" -> SRoot
      | "node" -> SNode
      | _ -> failwith ("Unknown node type: " ^ node_type_str)
    in
    let ir_value_opt = Option.map (gen_expr ir_program) value_opt in
    IRNodeCreationDecl (parent, node_type, name, ir_value_opt)
  | SOperationDecl (node_type_str, direction, operation) ->
    let node_type = match node_type_str with
      | "Root" -> SRoot
      | "node" -> SNode
      | _ -> failwith ("Unknown node type: " ^ node_type_str)
    in
    IROperationDecl (node_type, direction, operation)
  | _ -> failwith "Unsupported declaration"

(* Generates an IR node from a Sast node *)
let gen_node ir_program snode =
  let node_name = snode.name in
  let forward_value = match snode.forward_value with
    | Some sexpr -> Some (gen_expr ir_program sexpr)
    | None -> None
  in
  {
    node_type = snode.node_type;
    name = node_name;
    forward_value = forward_value;
    backward_value = None;
  }

(* Entry function to generate the complete IR program *)
let gen_program sprogram =
  let llcontext = Llvm.global_context () in
  let llmodule = Llvm.create_module llcontext "TreeLang" in
  let llbuilder = Llvm.builder llcontext in

  let ir_program = {
    nodes = [];
    decls = [];
    llmodule = llmodule;
    llbuilder = llbuilder;
    llcontext = llcontext;
  } in

  let ir_nodes = List.map (gen_node ir_program) sprogram.nodes in
  let ir_decls = List.map (gen_decl ir_program) sprogram.decls in

  { ir_program with nodes = ir_nodes; decls = ir_decls }

(* Function to print the results for debugging *)
let print_results ir_program =
  Printf.printf "Forward Pass:\n";
  List.iter (fun node ->
    match node.forward_value with
    | Some (IRInt value) -> Printf.printf "%s: %d\n" node.name value
    | _ -> ()
  ) ir_program.nodes;

  Printf.printf "\nBackward Pass:\n";
  List.iter (fun node ->
    match node.backward_value with
    | Some percentage -> Printf.printf "%s: %.2f%%\n" node.name percentage
    | _ -> ()
  ) ir_program.nodes

(* Example use case to illustrate how to run the IR generation *)
let _ =
  let sprogram = Sast.parse_program () in
  let ir_program = gen_program sprogram in
  print_results ir_program
