// Just doin this for EDA playground :)
// EP Wave has only hexa decimal representation

// 4 Digit is equivalent to 16 bit binary

module Day_8_4digit_BCD_Adder(input [15:0] a, b,
    						  input cin,
                              output cout,
                              output [15:0] sum );
  
  wire cout1, cout2, cout3;  //Three intermediate cout variables to transfer the couts.
    
    bcd_fadd instance1(.a(a[3:0]),
                        .b(b[3:0]),
                        .sum(sum[3:0]),
                        .cout(cout1),
                        .cin(cin));
    
    bcd_fadd instance2 (.a(a[7:4]), .b(b[7:4]), .sum(sum[7:4]), .cout(cout2), .cin(cout1));
    
    bcd_fadd instance3 (.a(a[11:8]), .b(b[11:8]), .sum(sum[11:8]), .cout(cout3), .cin(cout2));
    
    bcd_fadd instance4 (.a(a[15:12]), .b(b[15:12]), .sum(sum[15:12]), .cout(cout), .cin(cout3));

endmodule

module bcd_fadd(input [3:0] a,
                input [3:0] b,
                input     cin,
                output   cout,
    			output [3:0] sum );
  
  assign {cout, sum} = a + b + cin;
  
endmodule

