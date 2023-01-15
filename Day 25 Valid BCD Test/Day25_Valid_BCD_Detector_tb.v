module Day25_Valid_BCD_Detector_tb();
  
  // reg variables to drive input
  reg [3:0]  din;
  
  // wire variable to get output
  wire [3:0] dout;
  wire P0;
  
  // Design Instantiation
  Day25_Valid_BCD_Detector instance1 (.din(din), .dout(dout), .P0(P0));
  
  // VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parametrs
  initial
    begin
      for (int i = 0; i < 10; i++) 
          begin
            din = $urandom_range (0, 4'b1111);
      		#5;
    	end
    $finish;
   end
  
endmodule
  
  
  
  