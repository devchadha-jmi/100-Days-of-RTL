module Day12_Adder_Subtractor(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    //Method 1 of extending sub variable to 32 bits
   /* wire [31:0]sub_extended = 32'b0;
    Method 2 of extending sub variable to 32 bits*/
    wire [31:0]sub_extended = {32{sub}};
    
    //EXORing the b input as per the given schematic.
    wire [31:0]exor_b; 
    assign exor_b = sub_extended ^ b;
    
    //Instantiate adder module to carry out the sumb of 16 bits at a time
    wire carry_transition;
    
    add16 adder1(.a(a[15:0]),  .b(exor_b[15:0]),  .cin(sub),              .sum(sum[15:0]), .cout(carry_transition));
    add16 adder2(.a(a[31:16]), .b(exor_b[31:16]), .cin(carry_transition), .sum(sum[31:16]));
endmodule

module add16 (input[15:0] a, 
              input[15:0] b, 
              input cin, 
              output[15:0] sum, 
              output cout );
  
  assign {cout, sum} = a + b + cin;
  
endmodule
