module Day26_comparator_new_approach_tb();
  parameter K = 20;
  //reg variables 
  reg [K-1:0]a;
  reg [K-1:0]b;
  reg a_equal_b, a_greater_b, b_greater_a;
  
  // Design Instantiation
  Day26_comparator_new_approach instance1(.a(a), .b(b), .a_equal_b(a_equal_b), .a_greater_b(a_greater_b), .b_greater_a(b_greater_a));
  
  //VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parametrs
  initial
    begin
      for (int j = 0; j < 10; j++) 
          begin
            a = $urandom_range ({10{2'b00}}, {10{2'b11}});
            b = $urandom_range ({10{2'b00}}, {10{2'b11}});
            #5;
          end
      $finish;
    end
endmodule
