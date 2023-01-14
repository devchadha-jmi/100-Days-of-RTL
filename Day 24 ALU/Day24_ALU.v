// ALU Design: ALU Unit performs Arithmetic and Logic Micro-operations depending upon the select bits and input carry
// Three selection bits: s2, s1, s0
// Input Carry: Cin
// Input Data buses: A, B
// Functionality:
// s2 s1 s0 Cin | Functionality
// 0  0  0   0  |  A,Cout reset
// 0  0  1   0  |  A + B
// 0  1  0   0  |  A - B - 1
// 0  1  1   0  |  A - 1
// 0  0  0   1  |  A + 1
// 0  0  1   1  |  A + B + 1
// 0  1  0   1  |  A - B
// 0  1  1   1  |  A,Cout set
// 1  0  0   X  |  A ∨ B
// 1  0  1   X  |  A ⊕ B
// 1  1  0   X  |  A ^ B
// 1  1  1   X  |  !A

module Day24_ALU(input [3:0]A,
           input [3:0]B,
           input s2,
           input s1,
           input s0,
           input Cin,
           output reg [3:0]word_out,
           output reg Cout);
  
  wire [1:0]function_select_logical    = {s1, s0};
  wire [2:0]function_select_arithmetic = {s1, s0, Cin};
  
  always @ (*)
    begin
      if(!s2) begin                  //Arithmetic Unit Selected
        case (function_select_arithmetic)
        3'b000: begin
          word_out = 4'b0000;
          Cout = 1'b0;
        end
        
        3'b001: begin
          {Cout, word_out} = A + 4'b0001;
        end
        
        3'b010: begin
          {Cout, word_out} = A + B;
        end
        
        3'b011: begin
          {Cout, word_out} = A + B + 4'b0001;
        end
        
        3'b100: begin
          {Cout, word_out} = A + B - 4'b0001;
        end
        
        3'b101: begin
          {Cout, word_out} = A - B;
        end
        
        3'b110: begin
          {Cout, word_out} = A - 4'b0001;
        end
        
        3'b111: begin
          word_out = 4'b1111;
          Cout = 1'b1;
        end
      endcase
      end
      
      else begin                //Logical Unit Selected
        case (function_select_logical)
          2'b00: word_out = A | B;
          2'b01: word_out = A ~^ B;
          2'b10: word_out = A ^ B;
          2'b11: word_out = ~A;
        endcase
      end
    end
endmodule