module Day9_Binary_to_Gray_Converter_tb();
  
  //reg variables to assign inputs 
  reg [3:0]bin_inp;
  
  //Wire variable to assign output
  wire [3:0]gray_out;
  
  //Instantiating the design module
  Day9_Binary_to_Gray_Converter instance1(.bin_inp(bin_inp), .gray_out(gray_out));
  
  //VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parametrs
  initial
    begin
      for (int j = 0; j < 10; j++) 
          begin
            bin_inp = $urandom_range (4'b0000, 4'b1111);
            #5;
          end
      $finish;
    end
endmodule