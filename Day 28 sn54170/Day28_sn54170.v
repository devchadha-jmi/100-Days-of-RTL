// Day 28 sn54170

module Day28_sn54170(input [3:0]data_in,
                     input      wr_enb, 
                     input		rd_enb,
                     input [1:0]wr_sel,
                     input [1:0]rd_sel,
                     output [3:0]data_out);
  
  reg [3:0]latched_data[3:0];
  
  always@(wr_enb or wr_sel or data_in)
    begin
      if(!wr_enb)
        latched_data[wr_sel] = data_in;
    end
  
  assign data_out = (rd_enb) ? 4'b1111 : latched_data[rd_sel];
  
endmodule

                     
                     