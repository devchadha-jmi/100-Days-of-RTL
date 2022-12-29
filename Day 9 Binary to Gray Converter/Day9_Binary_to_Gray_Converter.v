module Day9_Binary_to_Gray_Converter(input [3 : 0]bin_inp,
                                     output reg [3 : 0]gray_out);
  
assign gray_out[3] = bin_inp[3];
assign gray_out[2] = bin_inp[3] ^ bin_inp[2];
assign gray_out[1] = bin_inp[2] ^ bin_inp[1];
assign gray_out[0] = bin_inp[1] ^ bin_inp[0];

endmodule