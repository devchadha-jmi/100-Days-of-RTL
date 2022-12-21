module Day1_Full_Adder(input [3:0] A,
                       input [3:0] B,
                       input Cin,
                       output [3:0]Sum,
                       output Cout);
  //The sum of A and B can be stored in Sum and Cout using the concatenation operator
  
  assign {Cout, Sum[3:0]} = A +B +Cin;
  
endmodule

