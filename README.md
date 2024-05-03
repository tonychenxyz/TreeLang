# Build instruction
`ocamlbuild -r -pkg llvm treelang.native`
- AST Parsing: `./treelang.native -a example.tl`
- SAST Parsing: `./treelang.native -s example.tl`
- IR generation (not finished yet): uncomment the corresponding IR gen lines in `treelang.ml`, build again, and `./treelang.native -l example.tl`

# Language Description:

1. The language consists of nodes and connections between them.
2. There are three types of nodes: Root, Directory, and File.
3. Each node has two integer attributes.
4. The Root node is unique and serves as the starting point of the structure.
5. Nodes are connected using the "connect" keyword followed by the source node type and the target node type.
6. Nodes can be instantiated using their type followed by a name.
7. File nodes can be assigned an integer value using the "=" operator.
8. Connections between nodes are established using the "->" operator, specifying the source node name and the target node name.
9. Each node type has two associated operations: forward_operation and backward_operation.
10. The forward_operation is performed during the forward pass, which traverses the structure from child nodes to parent nodes.
11. The backward_operation is performed during the backward pass, which traverses the structure from parent nodes to child nodes.
12. The available operations are:
    - "sum": Adds the values of the child nodes and assigns the result to the parent node.
    - "percentage": Calculates the percentage contribution of each child node to the parent node's value and assigns the percentage to the child node.
13. The script should output the forward and backward values of each node.

Example:

```
Root root int int

node Directory int int
node File int int

connect Directory -> Directory
connect Directory -> File

root -> Directory dir1
root -> File file1 = 200
dir1 -> Directory dir2
dir1 -> File file2 = 100
dir2 -> File file3 = 50

Directory.forward_operation = sum
File.forward_operation = sum
Directory.backward_operation = percentage
File.backward_operation = percentage
```

Output:
```
Forward Pass:
root: 350
dir1: 150
dir2: 50
file1: 200
file2: 100
file3: 50

Backward Pass:
root: 100%
dir1: 42.86%
dir2: 14.29%
file1: 57.14%
file2: 28.57%
file3: 14.29%
```

To implement the compiler for this language, you would need to:
1. Parse the input script and build an abstract syntax tree (AST) representing the node structure and connections.
2. Perform semantic analysis to validate the correctness of the script, ensuring that node types and operations are used correctly.
3. Generate an intermediate representation (IR) or directly generate target code (e.g., assembly or bytecode) based on the AST.
4. Implement the forward pass by traversing the AST from child nodes to parent nodes, applying the specified forward_operation at each node.
5. Implement the backward pass by traversing the AST from parent nodes to child nodes, applying the specified backward_operation at each node.
6. Execute the generated code or interpret the IR to obtain the forward and backward values of each node.
7. Output the results as shown in the example.

This language description provides a high-level overview of the language's syntax, semantics, and expected behavior, allowing a person to implement a compiler for it.