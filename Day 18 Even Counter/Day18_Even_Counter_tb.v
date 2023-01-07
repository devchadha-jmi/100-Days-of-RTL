module Day18_Even_Counter_tb();

// Inputs
reg clk;
reg rst;

// Outputs
reg [3:0] count;

// Instantiate the even counter
Day18_Even_Counter instance1 (.clk(clk),
  							  .rst(rst),
							  .count(count));
//vcd files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
always #5 clk = ~clk;
 initial
    begin
        clk = 1;
        rst = 1;
        #10;
        rst = 0;
        #80;
        #80;
        rst = 1;
        #80;
    $finish;
    end
endmodule
