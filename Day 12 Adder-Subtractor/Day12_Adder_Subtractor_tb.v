module Day12_Adder_Subtractor_tb();
  
  //reg variables for driving input
  reg [31:0] a;
  reg [31:0] b;
  reg sub;
  
  //wire variables for driving output
  wire [31:0] sum;
  
  // Design Module Instantation
  Day12_Adder_Subtractor instance_1(.a(a), .b(b), .sub(sub), .sum(sum));
  
  // VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parametrs
  initial
    begin
      for (int i = 0; i < 10; i++) 
          begin
            a   = $urandom_range (0, {32{1'b1}});
            b   = $urandom_range (0, {32{1'b1}});
            sub = $urandom_range (0, 1);
            #5;
          end
      $finish;
    end
endmodule
  