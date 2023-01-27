module Day28_sn54170_tb();
  
  // reg variables to drive input
  reg [3:0]  data_in;
  reg        wr_enb, rd_enb;
  reg [1:0]	 wr_sel, rd_sel;
  
  // wire variable to store output
  wire [3:0]  data_out;
  
  // Design Instantiation
  Day28_sn54170 instance1(data_in(data_in),
                          wr_enb(wr_enb),
                          rd_enb(rd_enb),
                          wr_sel(wr_sel),
                          rd_sel(rd_sel),
                          data_out(data_out));
  
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
            data_in = $urandom_range(0, 4'b1111);
            wr_enb  = $urandom_range(0, 1);
            rd_enb  = $urandom_range(0, 1);
            wr_sel  = $urandom_range(0, 2'b11);
            rd_sel  = $urandom_range(0, 2'b11);
      		#5;
    	end
    $finish;
   end
  
endmodule
