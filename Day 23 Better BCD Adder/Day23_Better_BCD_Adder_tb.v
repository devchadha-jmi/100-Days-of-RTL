module Day23_Better_BCD_Adder_tb();
  
  //reg variables to store the values of test variables
  reg [3:0] A;
  reg [3:0] B;
  
  //Output variables are wire net type
  wire [3:0] Y0;
  wire [3:0] Y1;
  
  //Instantiate the design module
  Day23_Better_BCD_Adder Instance1(.A(A),
                                   .B(B),
                                   .Y0(Y0),
                                   .Y1(Y1));
  //VCD File
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parameters
  //Only valid BCDs (0000 to 1001)
 initial
    begin
        A <= 4'b1001;
        B <= 4'b0101;
        #10;
        A <= 4'b1000;
        B <= 4'b0001;
        #10;
        A <= 4'b0000;
        B <= 4'b0110;
        #10;
        A <= 4'b1001;
        B <= 4'b1000;
        #10;
        A <= 4'b0111;
        B <= 4'b0001;
    $finish;
    end
endmodule