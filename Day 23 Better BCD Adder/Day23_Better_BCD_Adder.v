// BCD Adder - A better version
// Inputs are assumed to be valid BCDs

module Day23_Better_BCD_Adder(input [3:0]A,
                              input [3:0]B,
                              output [3:0]Y0,
                              output [3:0]Y1);
  wire [3:0]sum_untested;
  wire C0;
  Day1_Full_Adder instance1(.A(A), .B(B), .Sum(sum_untested), .Cout(C0));
  
  // Test for valid BCD
  wire X = (sum_untested[3] && sum_untested[2]) || (sum_untested[3] && sum_untested[1]) || C0;
  
  wire [3:0]test_vector = {1'b0, X, X, 1'b0};
  
  Day1_Full_Adder instance2(.A(test_vector), .B(sum_untested), .Sum(Y0), .Cout(C1));
  
  assign Y1 = {1'b0, 1'b0, 1'b0, (C0 | C1)};
  
endmodule

module Day1_Full_Adder(input [3:0] A,
                       input [3:0] B,
                       //input Cin,
                       output [3:0]Sum,
                       output Cout);
  //The sum of A and B can be stored in Sum and Cout using the concatenation operator
  
  assign {Cout, Sum[3:0]} = A +B ;
  
endmodule