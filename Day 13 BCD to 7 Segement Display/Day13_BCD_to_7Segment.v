// Day 13 BCD to Seven Segment Display

// BCD_num carries the input number from 0 to 9
// ss_code is 7 bit code (a,b,c,d,e,f,g) that would drive the seven segment display
// Off when the bcd digit is not a decimal number

module Day13_BCD_to_7Segment(input [3:0]BCD_num,
                             output reg [6:0]ss_code);
  
  always @*
    begin
      case (BCD_num)
            0 : ss_code = 7'b0000001;
            1 : ss_code = 7'b1001111;
            2 : ss_code = 7'b0010010;
            3 : ss_code = 7'b0000110;
            4 : ss_code = 7'b1001100;
            5 : ss_code = 7'b0100100;
            6 : ss_code = 7'b0100000;
            7 : ss_code = 7'b0001111;
            8 : ss_code = 7'b0000000;
            9 : ss_code = 7'b0000100;
            default : ss_code = 7'b1111111; 
        endcase
      end
endmodule