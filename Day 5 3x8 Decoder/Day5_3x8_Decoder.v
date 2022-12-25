module Day5_3x8_Decoder(input [2:0]state,
                        output reg [7:0]bus);
  
  always @ (*)
    begin
      case (state)
          3'b000: bus = 8'b00000001;
          3'b001: bus = 8'b00000010;
          3'b010: bus = 8'b00000100;
          3'b011: bus = 8'b00001000;
          3'b100: bus = 8'b00010000;
          3'b101: bus = 8'b00100000;
          3'b110: bus = 8'b01000000;
          3'b111: bus = 8'b10000000;
         default: bus = 8'b00000000;
      endcase
    end
endmodule