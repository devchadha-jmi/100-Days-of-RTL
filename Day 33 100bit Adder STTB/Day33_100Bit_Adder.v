module Full_Adder(input A,
                  input B,
                  input Cin,
                  output Sum,
                  output Cout);
  assign {Cout, Sum} = A + B + Cin;
  
endmodule

module Day33_100Bit_Adder(input [99:0]A,
                         input [99:0]B,
                         input Cin,
                         output [99:0]Sum,
                         output Cout);
  // Connection Net
  wire [99:0]Cout_temp;
  
  // Adder for bit 0
  Full_Adder adder_bit_0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(Cout_temp[0]));
  
  //Adder for bit 1-99
  genvar i;
  generate
    for(i=1;i<100;i++)
      begin
        Full_Adder adder_bit_i(.A(A[i]), .B(B[i]), .Cin(Cout_temp[i-1]), .Sum(Sum[i]), .Cout(Cout_temp[i]));
      end
  endgenerate
  
  assign Cout = Cout_temp[99];
  
endmodule

        