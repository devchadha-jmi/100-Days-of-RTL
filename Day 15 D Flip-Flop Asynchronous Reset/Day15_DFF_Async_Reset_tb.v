// Code your testbench here
// or browse Examples
module Day15_DFF_Async_Reset_tb();
  
  //reg variables to drive design
  reg clk;
  reg rst;
  reg [3:0]d;
  reg [3:0]out;
  
  //design instantiation
  Day15_DFF_Async_Reset instance1(.clk(clk),
                                 .rst(rst),
                                 .d(d),
                                 .out(out));
  //Clock
  initial clk = 1;
  always #5 clk = ~clk;

  //vcd files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  // Other parameters
  initial
    begin
        d = 4'b1010;
        rst = 1;
        #15;
        rst = 0;
        #40;
        rst = 1;
        d = 4'b1011;
        #15;
        rst = 0;
        #20;
        rst = 1;
      $finish;
    end
endmodule