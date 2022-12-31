// Vector Reversal
// Input  = 4'b0101
// Output = 4'b1010

parameter n = 4;
module Day11_Vector_Reversal(input [n-1:0]A,
                             output reg [n-1:0]B);
  
  always @ *
    begin
      for (int i= 0; i < n; i++) begin
        B[(n-1)-i] = A[i];
      end
    end
endmodule
