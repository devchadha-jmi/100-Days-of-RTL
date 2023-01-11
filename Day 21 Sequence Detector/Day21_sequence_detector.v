// 101 Sequence Detector overlapping type

module Day21_sequence_detector(input clk, 
                               input seq, 
                               output reg detected);
  
  reg [1:0] state; // 2-bit register to store the current state
  
  initial state <= 2'b00;
  
  always @(posedge clk) begin
    case (state)
      2'b00: if (seq) state <= 2'b01; else state <= 2'b00;
      2'b01: if (seq) state <= 2'b01; else state <= 2'b10;
      2'b10: if (seq) state <= 2'b11; else state <= 2'b00;
      2'b11: if (seq) state <= 2'b01; else state <= 2'b10;
    endcase
    if (state == 2'b11) detected <= 1'b1;
    else detected <= 1'b0;
  end
  
endmodule
