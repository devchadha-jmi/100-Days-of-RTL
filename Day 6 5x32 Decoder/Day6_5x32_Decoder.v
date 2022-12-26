// Design of 5x32 decoder using:
// 1 2x4 decoder &
// 4 3x4 decoders

module Day6_2x4_Decoder(input [1:0]sel_2x4,
                   output reg [3:0]word_2x4);
  
  always @ (*)
    begin
      case (sel_2x4)
        2'b00:word_2x4 = 4'b0001;
        2'b01:word_2x4 = 4'b0010;
        2'b10:word_2x4 = 4'b0100;
        2'b11:word_2x4 = 4'b1000;
      default:word_2x4 = 4'b0000;
      endcase
    end
endmodule

module Day6_3x8_Decoder(input [2:0]sel_3x8,
                   input enable,
                   output reg [7:0]word_3x8);
  
  always @ (*)
    begin
      if (enable) begin
      case (sel_3x8)
          3'b000: word_3x8 = 8'b00000001;
          3'b001: word_3x8 = 8'b00000010;
          3'b010: word_3x8 = 8'b00000100;
          3'b011: word_3x8 = 8'b00001000;
          3'b100: word_3x8 = 8'b00010000;
          3'b101: word_3x8 = 8'b00100000;
          3'b110: word_3x8 = 8'b01000000;
          3'b111: word_3x8 = 8'b10000000;
         default: word_3x8 = 8'b00000000;
      endcase end
      else begin
      word_3x8 = 8'b00000000;
      end
    end
endmodule

module Day6_5x32_Decoder(input [4:0]sel_5x32,
                         output [31:0]word_5x32);
  
  //Net variable to store word2x4
  reg [3:0]word_2x4;
  
  //Net variable to store word3x8
  reg [7:0]word_3x8_1;
  reg [7:0]word_3x8_2;
  reg [7:0]word_3x8_3;
  reg [7:0]word_3x8_4;
  
  reg [31:0]word_5x32_reg;
  //Module Instantiation
  
  //Enable generation
  Day6_2x4_Decoder Instance1(.sel_2x4(sel_5x32[4:3]), .word_2x4(word_2x4));
  
  // Word_out[7:0]
  Day6_3x8_Decoder Instance2(.sel_3x8(sel_5x32[2:0]), .enable(word_2x4[0]), .word_3x8(word_3x8_1));
  
  // Word_out[15:8]
  Day6_3x8_Decoder Instance3(.sel_3x8(sel_5x32[2:0]), .enable(word_2x4[1]), .word_3x8(word_3x8_2));
  
  // Word_out[23:16]
  Day6_3x8_Decoder Instance4(.sel_3x8(sel_5x32[2:0]), .enable(word_2x4[2]), .word_3x8(word_3x8_3));
  
  // Word_out[31:24]
  Day6_3x8_Decoder Instance5(.sel_3x8(sel_5x32[2:0]), .enable(word_2x4[3]), .word_3x8(word_3x8_4));
  
  assign word_5x32 = {(word_3x8_4), (word_3x8_3), (word_3x8_2), (word_3x8_1)};
  
endmodule