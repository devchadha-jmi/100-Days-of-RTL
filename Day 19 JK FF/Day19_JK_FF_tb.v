module Day19_JK_FF_tb();
  
  // reg variables
  reg clk;
  reg j, k, rst;
  reg Q;
  
  // Design Instantiation
  Day19_JK_FF instance1(.j(j),
                        .k(k),
                        .clk(clk),
                        .rst(rst),
                        .Q(Q));
  
  // VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  // Clock
  initial clk = 1;
  always #5 clk = ~clk;
  
  // Other parameters
  initial
    begin
        rst = 1;
        j   = 0;
        k   = 0;
        #15;
        rst = 0;
        j   = 1;
        k   = 0;
        #20;
        j   = 1;
        k   = 1;
        #15;
        j   = 0;
        k   = 1;
        #20;
        j   = 0;
        k   = 0;
        #20;
      $finish;
    end
endmodule