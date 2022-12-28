module Day_8_4digit_BCD_Adder_tb();
  
  //reg variables for driving input
  reg [15:0] a;
  reg [15:0] b;
  reg cin;
  
  //wire variables for driving input
  wire [15:0] sum;
  wire cout;
  
  // Design Module Instantation
  Day_8_4digit_BCD_Adder instance_addr(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
  
  // VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  //Driving Parametrs
  initial
    begin
      for (int i = 0; i < 10; i++) 
          begin
            a   = $urandom_range (0, 16'b1111111111111111);
            b   = $urandom_range (0, 16'b1111111111111111);
            cin = $urandom_range (0, 1);
            #5;
          end
      $finish;
    end
endmodule