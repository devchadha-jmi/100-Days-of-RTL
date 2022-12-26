module Day6_5x32_Decoder_tb();
  
  //temporary reg variables for driving the input
  reg [4:0] sel_5x32;
  
  //Ouput variable is also taken as reg type here
  reg [31:0] word_5x32;
  
  //Design module instantiation
  Day6_5x32_Decoder instance1(.sel_5x32(sel_5x32), .word_5x32(word_5x32));
  
  //VCD Files
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  //Diving Parameters
  initial
    begin
      for(int i=0; i<5; i++)
        begin
          sel_5x32 = $urandom_range(5'b00000, 5'b11111);
          #10;
        end
      $finish;
    end
endmodule