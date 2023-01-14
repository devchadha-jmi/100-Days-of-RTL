module Day24_ALU_tb();
  
  //reg input and output variables
  reg [3:0]A;
  reg [3:0]B;
  reg s2, s1, s0, Cin;
  reg [3:0]word_out;
  reg Cout;
  
  // Design Instantiation
  Day24_ALU instance1(.A(A), .B(B), .s2(s2), .s1(s1), .s0(s0), .Cin(Cin), .word_out(word_out), .Cout(Cout));
  
  // VCD File
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parametrs
  initial
    begin
      for (int i = 0; i < 10; i++) 
          begin
            A    = $urandom_range (0, 4'b1111);
            B    = $urandom_range (0, 4'b1111);
            s2   = $urandom_range (0, 1);
            s1   = $urandom_range (0, 1);
            s0   = $urandom_range (0, 1);
            Cin  = $urandom_range (0, 1);
      		#5;
    	end
    $finish;
   end
  
endmodule