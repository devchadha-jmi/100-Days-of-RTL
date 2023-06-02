module Day30_Carry_Look_Ahead_Adder(input [3:0]A,
                                    input [3:0]B,
                                    input Cin,
                                    output [3:0]Sum,
                                    output Cout
                                   );
  // Carry Propagation
  wire [3:0]P;
  xor (P[0], A[0], B[0]);
  xor (P[1], A[1], B[1]);
  xor (P[2], A[2], B[2]);
  xor (P[3], A[3], B[3]);
  
  // Carry Generation
  wire [3:0]G;
  and (G[0], A[0], B[0]);
  and (G[1], A[1], B[1]);
  and (G[2], A[2], B[2]);
  and (G[3], A[3], B[3]);
  
  assign C0 = G[0] | (P[0] & Cin);
  assign C1 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
  assign C2 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
  assign C3 = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
  
  // Sum
  xor (Sum[0], P[0], Cin);
  xor (Sum[1], P[1], C0);
  xor (Sum[2], P[2], C1);
  xor (Sum[3], P[3], C2);
  
  // Carry Out
  assign Cout = C3;

endmodule  