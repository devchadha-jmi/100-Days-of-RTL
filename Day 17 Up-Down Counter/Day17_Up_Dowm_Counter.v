// Code your design here
module Day17_Up_Dowm_Counter( input clk,     // Clock Signal
                        input rst,     // Reset Control Signal
                        input control, // Control Signal: Control = 1 for Up Counter, Control = 0 for Down Counter
                        output reg [3:0]count); // 4 bit output value
    initial
    begin
        count <= 4'b0111;                           // Initially the counter is set to 7 (The middle value)
    end

    always @ (posedge clk)
    begin
      if(rst) 
        count <= control ? 4'b0000 : 4'b1111;      // Reset values are different depending upon the mode of counter selected
      else
        count <= control ? (count + 4'b0001) : (count - 4'b0001);  // Different Count actions depending upon the mode of selection
    end

endmodule