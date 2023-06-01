module Day29_Positive_Edge_Detector_tb();
  
  // reg variables to drive i/p and store o/p
  reg clk;
  reg din;
  wire delay_din;
  wire edge_detected;
  
  // Design Instantiation
  Day29_Positive_Edge_Detector instance1(.clk(clk), .din(din), .edge_detected(edge_detected), .delay_din(delay_din));
  
  //VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  // Clock 
  initial  clk = 0; 
  always begin 
    #5 clk = ~clk;
  end
  
  // Driving other parameters
  // Driving other parameters
  initial begin
    din = 1'b1;
    #10 din = 1'b0;
    #22 din = 1'b1;
    #35 din = 1'b0;
    #46 din = 1'b1;
    #43 din = 1'b0;
    #24 din = 1'b1;
    #12 din = 1'b0;
    #10 $finish;
  end
endmodule