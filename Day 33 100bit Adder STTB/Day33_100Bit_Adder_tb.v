module Day33_100Bit_Adder_tb();
  
  //Input reg variables
  
  reg [99:0] A;
  reg [99:0] B;
  reg Cin;
  
  //Output variables are wire net type
  wire [99:0] Sum;
  wire Cout;
  
  //Instantiate the design module
  Day33_100Bit_Adder Instance1  (.A(A),
                               .B(B),
                               .Cin(Cin),
                               .Sum(Sum),
                               .Cout(Cout));
  
	task load_inputs;
  		begin
  			//Driving Parameters
      	    parameter N = {100{1'b1}};
      		for (int i = 0; i < 30; i++) 
          		begin
            		A  = $urandom_range (0, N);
            		B  = $urandom_range (0, N);
      				Cin = $random%2;
      				#5;
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
      $monitor("Value of A = %h, B = %h, Cin = %b, Sum = %h, Cout = %b at time = %t", A,B,Cin,Sum,Cout,$time);
      load_inputs;
      #200;
      $finish;
    end

endmodule