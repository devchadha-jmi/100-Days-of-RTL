// Code your testbench here
// or browse Examples
module Day17_Up_Dowm_Counter_tb();
    reg clk;        // Clock Signal
    reg rst;        // Reset Signal
    reg control;    // Control Signal for Up-Down Counter
    wire [3:0]out;  // 4 Bit output

Day17_Up_Dowm_Counter Instance1(.clk(clk),
                          .rst(rst),
                          .control(control),
                          .count(out));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
 always #5 clk = ~clk;
 initial
    begin
        clk = 1;
        rst = 1;
        control = 1;
        #10;
        rst = 0;
        #80;
        control = 0;
        #80;
        control = 1;
        #20;
        rst = 1;
    $finish;
    end
endmodule