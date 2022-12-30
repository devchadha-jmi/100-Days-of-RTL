parameter n = 4;
module Day9_Binary_to_Gray_Converter(input [n-1 : 0]bin_inp,
                                     output reg [n-1 : 0]gray_out);
  
/* This is general for 4 bits
assign gray_out[3] = bin_inp[3];
assign gray_out[2] = bin_inp[3] ^ bin_inp[2];
assign gray_out[1] = bin_inp[2] ^ bin_inp[1];
assign gray_out[0] = bin_inp[1] ^ bin_inp[0];
*/
  
  assign gray_out[n-1] = bin_inp[n-1];
  always@(*) begin
    for (int i = n-1; i> 0; i= i-1)
    begin
      gray_out[i-1] = bin_inp[i] ^ bin_inp[i-1];
    end
  end

endmodule