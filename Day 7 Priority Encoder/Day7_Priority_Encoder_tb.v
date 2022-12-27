module Day7_Priority_Encoder_tb();
  
  //reg variables for driving input and output
  reg [7:0] data;
  reg [2:0] pos;
  
  // Design Module Instantation
  Day7_Priority_Encoder instance1(.data(data), .pos(pos));
  
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
            data = $urandom_range (0, 8'b11111111);
            #5;
          end
      $finish;
    end
endmodule