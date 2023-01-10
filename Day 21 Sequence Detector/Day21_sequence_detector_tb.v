module Day21_sequence_detector_tb();
  // Reg variables to drive inputs
  reg clk,seq;
  
  // Wire output variable to connect to detected port
  wire detected;
  
  // Design Instantiation
  Day21_sequence_detector m1(.clk(clk), .seq(seq), .detected(detected));
  
  // VCD Files
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
  // Clock 
  initial  clk = 0; 
  always begin 
    #5 clk = ~clk;
  end
  
  // Driving other parameters
  initial begin
    seq = 0;
    #10 seq = 1;
    #10 seq = 0;
    #10 seq = 1;
    #10 seq = 0;
    #10 seq = 0;
    #10 seq = 0;
    #10 seq = 1;
    #10 seq = 0;
    #10$finish;
  end
endmodule