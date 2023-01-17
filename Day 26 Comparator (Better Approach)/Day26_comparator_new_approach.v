// 2-bit comparator 
// New Approach
parameter size = 20;
module Day26_comparator_new_approach(input [size-1:0]a,
                                     input [size-1:0]b,
                                     output reg a_greater_b,
                                     output reg b_greater_a,
                                     output reg a_equal_b);
                                      
  always @ (*)
    begin: compare_loop
      for(int k = size; k>0; k=k-1)
        begin
          if(a[k] != b[k])
            begin
              a_greater_b = a[k];
              b_greater_a = ~a[k];
              a_equal_b   = 1'b0;
              disable compare_loop;
            end
          else
            begin
              a_greater_b = 1'b0;
              b_greater_a = 1'b0;
              a_equal_b   = 1'b1;
        end
        end
    end
endmodule