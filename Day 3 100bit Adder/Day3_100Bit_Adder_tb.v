module Day3_100Bit_Adder_tb();
  
  //Input reg variables
  
  reg [99:0] A;
  reg [99:0] B;
  reg Cin;
  
  //Output variables are wire net type
  wire [99:0] Sum;
  wire Cout;
  
  //Instantiate the design module
  Day3_100Bit_Adder Instance1  (.A(A),
                               .B(B),
                               .Cin(Cin),
                               .Sum(Sum),
                               .Cout(Cout));
  //VCD File
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parameters
  parameter N = 100'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
 initial
    begin
      for (int i = 0; i < 25; i++) 
          begin
            A  = $urandom_range (0, N);
            B  = $urandom_range (0, N);
      		Cin = $random%2;
      		#5;
    	end
    $finish;
   end
endmodule