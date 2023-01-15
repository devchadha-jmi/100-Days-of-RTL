// din[3:0] = {a, b, c, d}
module Day25_Valid_BCD_Detector(input  [3:0]din,
                                output [3:0]dout,
                                output P0);
  
  assign P0 = ~ (din[3] && (din[2] || din[1]));
  
  assign dout[3] = din[3] & P0;
  assign dout[2] = din[2] & P0;
  assign dout[1] = din[1] & P0;
  assign dout[0] = din[0] & P0;
  
endmodule
  