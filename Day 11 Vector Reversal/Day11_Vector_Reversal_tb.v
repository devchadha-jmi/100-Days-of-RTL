module Day11_Vector_Reversal_tb();
  parameter k = 4;
  
  //reg variables to drive input and output
  reg [k-1:0]A, B;
  
  //Design Module Instantiation
  Day11_Vector_Reversal instance1(.A(A), .B(B));
  
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
            #5;
          end
      $finish;
    end
endmodule
  