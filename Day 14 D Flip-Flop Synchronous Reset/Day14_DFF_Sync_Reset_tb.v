module Day14_DFF_Sync_Reset_tb();
  
  //reg variables to drive design
  reg clk;
  reg rst;
  reg [3:0]d;
  reg [3:0]out;
  
  //design instantiation
  Day14_DFF_Sync_Reset instance1(.clk(clk),
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
        #80;
        rst = 1;
        d = 4'b1011;
        #15;
        rst = 0;
        #20;
        rst = 1;
      $finish;
    end
endmodule