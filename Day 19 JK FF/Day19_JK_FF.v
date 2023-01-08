module Day19_JK_FF(input j,
                   input k,
                   input clk,
                   input rst,
                   output reg Q);
  
  always @ (posedge clk)
    begin
      
      if(rst) begin
        Q <= 1'b0;
      end
      
      else begin
      case ({j,k})
        2'b00: Q <= Q;
        2'b01: Q <= 1'b0;
        2'b10: Q <= 1'b1;
        2'b11: Q <= ~Q;
      endcase
      end
      
    end
  
endmodule