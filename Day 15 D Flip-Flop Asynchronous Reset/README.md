# D Flip Flop with asynchronous reset

Asynchronous Resets are triggered immediately. Glitches are the major cause of trouble in case of aync resets.
- Asynchronous resets are synthesis friendly. It will never come in the critical path.
- Faster
- No dependency on clock logic.
- It usually occupies more area since we have additional pin within it.

<p align = "center">
  
  <img width="267" alt="image" src="https://user-images.githubusercontent.com/82091082/210622927-17b395fc-de65-41e1-89fb-07337d3257a7.png">

</p>

##### Source: [Quora](https://www.quora.com/What-is-the-difference-between-a-synchronous-reset-and-an-asynchronous-reset)
