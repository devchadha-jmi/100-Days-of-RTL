module Day20_SR_FF_tb();
  
  // reg variables
  reg clk;
  reg s, r, rst;
  reg Q;
  
  // Design Instantiation
  Day20_SR_FF instance1(.s(s),
                        .r(r),
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
        s   = 0;
        r   = 0;
        #15;
        rst = 0;
        s   = 1;
        r   = 0;
        #20;
        s   = 1;
        r   = 1;
        #15;
        s   = 0;
        r   = 1;
        #20;
        s   = 0;
        r   = 0;
        #20;
      $finish;
    end
endmodule
