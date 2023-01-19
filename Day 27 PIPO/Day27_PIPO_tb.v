// Code your testbench here
// or browse Examples
module Day27_PIPO_tb();
  
  // reg variables to drive i/p and store o/p
  reg rst, clk;
  reg [3:0] Din, Dout;
  
  // Design Instantiation
  Day27_PIPO instance1(.clk(clk), .rst(rst), .Din(Din), .Dout(Dout));
  
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
    rst = 1;
    Din = 4'b1010;
    #15 rst = 0; 
    #10 Din = 4'b1010;
    #20 Din = 4'b1000;
    #30 Din = 4'b0100;
    #40 Din = 4'b0110;
    #10$finish;
  end
endmodule
  