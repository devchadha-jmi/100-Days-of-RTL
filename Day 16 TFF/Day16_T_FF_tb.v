module Day16_T_FF_tb();
  
  //reg variables to drive design
  reg clk;
  reg rst;
  reg [3:0]in;
  reg [3:0]t_out;
  
  //design instantiation
  Day16_T_FF           instance1(.clk(clk),
                                 .rst(rst),
                                 .in(in),
                                 .t_out(t_out));
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
        in = 4'b1010;
        rst = 1;
        #15;
        rst = 0;
        #40;
        rst = 1;
        in = 4'b1011;
        #15;
        rst = 0;
        #20;
        rst = 1;
      $finish;
    end
endmodule