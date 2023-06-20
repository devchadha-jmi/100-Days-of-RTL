module Day34_2X1_Mux(input  sel, 
                     input  [31:0]A, 
                     input  [31:0]B, 
                     output [31:0]Out); 
  assign Out = sel ? B : A; 
endmodule