module Day5_3x8_Decoder_tb();
  
  //temporary reg variables for driving the input
  reg [2:0] state;
  
  //Ouput variable is also taken as reg type here
  reg [7:0] bus;
  
  //Design module instantiation
  Day5_3x8_Decoder instance1(.state(state), .bus(bus));
  
  //VCD Files
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  //Diving Parameters
  initial
    begin
      for(int i=0; i<25; i++)
        begin
          state = $urandom_range(3'b000, 3'b111);
          #10;
        end
      $finish;
    end
endmodule