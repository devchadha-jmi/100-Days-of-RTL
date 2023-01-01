# Adder Subtractor Circuit
An adder-subtractor can be built from an adder by optionally negating one of the inputs, which is equivalent to inverting the input then adding 1. The net result is a circuit that can do two operations:
- a + b + 0, and 
- a + ~b + 1

You are provided with a 16-bit adder module, which you need to instantiate twice:

```
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
```

Use a 32-bit wide XOR gate to invert the b input whenever sub is 1. (This can also be viewed as b[31:0] XORed with sub replicated 32 times.
Also connect the sub input to the carry-in of the adder.


<p align="center">
<img width="451" alt="image" src="https://user-images.githubusercontent.com/82091082/210180779-bbabc034-403a-4803-9a0f-f060fe53ee81.png">
</p>

##### Source: [HDL Bits](https://hdlbits.01xz.net/wiki/Module_addsub)
