// Positive Edge Detector

module Day29_Positive_Edge_Detector(input clk,
                                    input din,
                                    output edge_detected,
                                    output delay_din
                                   );
  reg delayed_din;
  always @(posedge clk)
    begin
      delayed_din <= din;
    end
  assign delay_din = delayed_din;
  assign edge_detected = din & ~delay_din;
  
endmodule  