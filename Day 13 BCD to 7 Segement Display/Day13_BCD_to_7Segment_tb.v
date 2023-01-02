module Day13_BCD_to_7Segment_tb();
  
  //reg variables for driving input
  reg [3:0]BCD_num;
  reg [6:0]ss_code;
  
  // Design Module Instantation
  Day13_BCD_to_7Segment instance_1(.BCD_num(BCD_num), .ss_code(ss_code));
  
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
            BCD_num   = $urandom_range (0, {4{1'b1}});
            #5;
          end
      $finish;
    end
endmodule