module Day2_Ripple_Carry_Adder_tb();
  
  //Input reg variables
  
  reg [3:0] A;
  reg [3:0] B;
  reg Cin;
  
  //Output variables are wire net type
  wire [3:0] Sum;
  wire Cout;
  
  //Instantiate the design module
  Day2_Ripple_Carry_Adder Instance1(.A(A),
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
 initial
    begin
        A <= 4'b1010;
        B <= 4'b0101;
      	Cin <= 1'b0;
        #10;
        A <= 4'b1000;
        B <= 4'b1101;
      	Cin <= 1'b1;
        #10;
        A <= 4'b0000;
        B <= 4'b1111;
      	Cin <= 1'b1;
        #10;
        A <= 4'b1010;
        B <= 4'b1100;
      	Cin <= 1'b0;
        #10;
        A <= 4'b1101;
        B <= 4'b0111;
      	Cin <= 1'b0;
    $finish;
    end
endmodule