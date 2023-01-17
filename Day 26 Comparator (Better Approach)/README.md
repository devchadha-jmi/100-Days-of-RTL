# Comparator - Different Approach

On [Day 10](), I solved a problem that described a 2-bit comparator by Boolean equations and a netlist of primitives , and a set of continuous assign-ments.

The model used today, "Comparator - Different Approach", describes the functionality of a 2-bit comparator by a level-sensitive behavior.
Its algorithm exploits the fact that the data words are identical if all of their bits match in each position. Otherwise, the most significant bit at which the words differ determines their relative magnitude. 

This algorithm is not as simple or as gobelegant as the ones used before, but it serves to illustrate the power of synthesis tools to correctly synthesize combinational logic from a level-sensitive cyclic behavior containing a loop construct. 

The synthesized circuit is below.

<p align = "center">
  
  <img width="421" alt="image" src="https://user-images.githubusercontent.com/82091082/212984916-59080f65-bcf9-46ea-af87-15ff93763b24.png">

</p>

Source - Advanced Digital Design with the Verilog HDL
