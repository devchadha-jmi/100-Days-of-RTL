module Day_38_4digit_BCD_Adder_tb();
  
  //reg variables for driving input
  reg [15:0] a;
  reg [15:0] b;
  reg cin;
  
  //wire variables for driving input
  wire [15:0] sum;
  wire cout;
  
  // Design Module Instantation
  Day_38_4digit_BCD_Adder instance_addr(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
  
  task load_data;
    begin
      
  	 //Driving Parametrs
      for (int i = 0; i < 80; i++) 
          begin
            a   = $urandom_range (0, 16'b1111111111111111);
            b   = $urandom_range (0, 16'b1111111111111111);
            cin = $urandom_range (0, 1);
            #10;
          end
      
      if ({cout, sum} != a + b + cin)
        begin
          $display("BCD Adder is not working fine");
          $display("Error at time: %t", $time);
          $finish;
        end
      
      else
        $display("BCD Adder is working fine");
      
    end
  endtask
  
  initial
    begin
      $monitor("Value of A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b at time = %t", a,b,cin,sum,cout,$time);
      load_data;
      #400;
      $finish;
    end
  
endmodule