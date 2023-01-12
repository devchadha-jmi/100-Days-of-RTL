# Better BCD Adder

The previous BCD Adder I made in this series was a very unrefined version of a BCD Adder, that had a lot of assumptions.
Today I have tried to bring it down to a real world scenario, not fully though.

- I have assumed that the inputs given to my BCD Adder are valid BCDs.
- The ouput of the first full adder in the below given design produces a simple sum of the inputs.
- In the next step, the output is tested for validity as a BCD. Incase of an **End-around carry** or **N > 9**, the sum is invalid BCD.
- Accordingly the second adder is instructed whether to add 6, "0110" to the produced sum or not. In case of no error 0 "0000" gets added to the sum.

<p align = "center">

<img width="324" alt="image" src="https://user-images.githubusercontent.com/82091082/212151652-979644d4-5677-4c24-9db3-f9bb68d3c503.png">

</p>

