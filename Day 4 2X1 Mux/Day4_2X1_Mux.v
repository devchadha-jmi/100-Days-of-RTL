module Day4_2X1_Mux(input  sel,
                    input  [1:0]A,
                    input  [1:0]B,
                    output [1:0]Out);
  
  assign Out = sel ? B : A;
  
endmodule 