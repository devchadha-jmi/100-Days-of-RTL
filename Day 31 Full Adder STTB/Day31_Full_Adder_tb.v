// Self-testing testbenches

module Day31_Full_Adder_tb();
  
  //reg variables to store the values of test variables
  reg [3:0] A;
  reg [3:0] B;
  reg Cin;
  
  //Output variables are wire net type
  wire [3:0] Sum;
  wire Cout;
  
  //Instantiate the design module
  Day31_Full_Adder Instance1(.A(A),
                            .B(B),
                            .Cin(Cin),
                            .Sum(Sum),
                            .Cout(Cout));
  
  
  task load_inputs;
    begin
      for (int i = 0; i <10; i++)
        begin
          #5  A <= $random%15;
          #10 B <= $random%15;
          #20 Cin <= $random%1;
        end
      
      if ({Cout, Sum} != A + B + Cin)
        begin
          $display("Full Adder is not working fine");
          $display("Error at time: %t", $time);
          $finish;
        end
      else
        $display("Full Adder is working fine");
    end
  endtask
  
  // Applying Stimulus
  initial
    begin
      $monitor("Value of A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b at time = %t", A,B,Cin,Sum,Cout,$time);
      load_inputs;
      #200;
      $finish;
    end

endmodule