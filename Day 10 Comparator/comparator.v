// N Bit Comparator

parameter n = 4;
module comparator(input [n-1:0]A,
                  input [n-1:0]B,
                  output reg equal,
                  output reg A_more_B,
                  output reg A_less_B);
 
  always @*
    begin
      if (A == B) begin
         equal      = 1;
         A_more_B   = 0;
         A_less_B   = 0;
      end
      else if (A > B) begin
        equal      = 0;
        A_more_B   = 1;
        A_less_B   = 0;
      end
      else begin
        equal = 0;
        A_more_B   = 0;
        A_less_B   = 1;
      end
    end
endmodule
