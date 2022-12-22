module Full_Adder(input A,
                  input B,
                  input Cin,
                  output Sum,
                  output Cout);
  assign {Cout, Sum} = A + B + Cin;
  
endmodule

module Day2_Ripple_Carry_Adder(input [3:0]A,
                          input [3:0]B,
                          input Cin,
                          output [3:0]Sum,
                          output Cout);
  //Temporary Element to make nets from Cout(i) to Cout(i+1)
  
  wire [2:0]Cout_temp;
  
  Full_Adder Adder1(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(Cout_temp[0]));
  Full_Adder Adder2(.A(A[1]), .B(B[1]), .Cin(Cout_temp[0]), .Sum(Sum[1]), .Cout(Cout_temp[1]));
  Full_Adder Adder3(.A(A[2]), .B(B[2]), .Cin(Cout_temp[1]), .Sum(Sum[2]), .Cout(Cout_temp[2]));
  Full_Adder Adder4(.A(A[3]), .B(B[3]), .Cin(Cout_temp[2]), .Sum(Sum[3]), .Cout(Cout));
  
endmodule
  