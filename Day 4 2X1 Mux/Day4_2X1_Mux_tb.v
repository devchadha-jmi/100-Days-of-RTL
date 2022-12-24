module Day4_2X1_Mux_tb();
  
  // reg variables to assign inputs
  reg [1:0]A;
  reg [1:0]B;
  reg sel;
  
  // wire variables to assign output ports 
  wire [1:0]Out;
  
  // Deign module instantiation
  Day4_2X1_Mux Instance1 (.A(A), .B(B), .sel(sel), .Out(Out));
    
  //VCD File
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  // Driving parameters
  parameter N2 = 2'b11;
  parameter N1 = 1'b1;
  initial
    begin
      for(int i= 0; i<10; i++)
        begin
          A   = $urandom_range(0, N2);
          B   = $urandom_range(0, N2);
          sel = $urandom_range(0, N1);
          #10;
        end
      $finish;
    end

endmodule
