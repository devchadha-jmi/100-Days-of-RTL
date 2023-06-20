module Day34_2X1_Mux_tb();
  
  // reg variables to assign inputs
  reg [31:0]A;
  reg [31:0]B;
  reg sel;
  
  // wire variables to assign output ports 
  wire [31:0]Out;
  
  // Deign module instantiation
  Day34_2X1_Mux Instance1 (.A(A), .B(B), .sel(sel), .Out(Out));
    
  task load_inputs;
    begin
       parameter N2 = {16{2'b11}};
  	   parameter N1 = 1'b1;
       for(int i= 0; i<10; i++)
        begin
          A   = $urandom_range(0, N2);
          B   = $urandom_range(0, N2);
          sel = $urandom_range(0, N1);
          #10;
        end
      
      case (sel)
        1'b1: begin
          if (Out != B)
                 begin
                   $display("MUX is not working fine");
                  $display("Error at time: %t", $time);
                  $finish;
                end
          else
            $display("MUX is working fine");
               end
        1'b0: begin
          if (Out != A)
                 begin
                   $display("MUX is not working fine");
                  $display("Error at time: %t", $time);
                  $finish;
                end
          else
            $display("MUX is working fine");
               end
       endcase
    end
  endtask
  
  // Applying Stimulus
  initial
    begin
      $monitor("Value of A = %h, B = %h, Sel = %b and output out = %h at time = %t", A,B,sel,Out,$time);
      load_inputs;
      #200;
      $finish;
    end


endmodule
