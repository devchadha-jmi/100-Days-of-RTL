 ALU Design: ALU Unit performs Arithmetic and Logic Micro-operations depending upon the select bits and input carry
 
 Three selection bits: s2, s1, s0
 
 Input Carry: Cin
 
 Input Data buses: A, B
 
 
 Functionality:
 | s2 | s1 | s0 | Cin | Functionality |
 | -- | -- | -- | -- | ------------- | 
 | 0  | 0  | 0  | 0  |  A,Cout reset |
 | 0  | 0  | 1  | 0  |  A + B |
 | 0  | 1  | 0  | 0  |  A - B - 1 |
 | 0  | 1  | 1  | 0  |  A - 1 |
 | 0  | 0  | 0  | 1  |  A + 1 |
 | 0  | 0  | 1  | 1  |  A + B + 1 |
 | 0  | 1  | 0  | 1  |  A - B |
 | 0  | 1  | 1  | 1  |  A,Cout set |
 | 1  | 0  | 0  | X  |  A ∨ B |
 | 1  | 0  | 1  |  X |  A ⊕ B |
 | 1  | 1  | 0  | X  |  A ^ B |
 | 1  | 1  | 1  | X  |  !A |
