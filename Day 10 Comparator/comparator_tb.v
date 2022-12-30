module comparator_tb();
  parameter K = 4;
  //reg variables 
  reg [K-1:0]A;
  reg [K-1:0]B;
  reg equal, A_more_B, A_less_B;
  
  // Design Instantiation
  comparator instance1(.A(A), .B(B), .equal(equal), .A_more_B(A_more_B), .A_less_B(A_less_B));
  
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
            A = $urandom_range (4'b0000, 4'b1111);
            B = $urandom_range (4'b0000, 4'b1111);
            #5;
          end
      $finish;
    end
endmodule