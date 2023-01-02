# BCD to 7 Segment Display

Seven segment displays are the output display device that provides a way to display information in the form of images or text or decimal numbers which is an alternative to the more complex dot matrix displays. 
It is widely used in digital clocks, basic calculators, electronic meters, and other electronic devices that display numerical information. 
It consists of seven segments of light-emitting diodes (LEDs) which are assembled like numerical 8.

<p align="center">
  
<img width="112" alt="image" src="https://user-images.githubusercontent.com/82091082/210267796-c7958436-c41d-4077-babb-b3e6bcb3bdb8.png">
  
</p>

Each one of the seven LEDs in the display is given a positional segment with one of its connection pins being brought straight out of the rectangular plastic package.
So by forward biasing the appropriate pins of the LED segments in a particular order, some segments will be light and others will be dark allowing the desired character pattern of the number to be generated on the display. This then allows us to display each of the ten decimal digits 0 through to 9 on the same 7-segment display.

<p align="center">
  
<img width="457" alt="image" src="https://user-images.githubusercontent.com/82091082/210267818-1ffa7ffe-527d-4265-b7a3-6a3c4a0b9dbb.png">
  
</p>

#### Below is the truth table followed to design the seven segment display controller in verilog

<p align="center">
  
<img width="382" alt="image" src="https://user-images.githubusercontent.com/82091082/210267852-28d5f68d-f8db-43d3-8b15-76288a575f7a.png">
  
</p>

##### Sources to learne more: 
- [Electronics Tutorials](https://www.electronics-tutorials.ws/blog/7-segment-display-tutorial.html)
- [Pinterest](https://www.pinterest.com/pin/614671049121231992/)
- [Geeks for Geeks](https://www.geeksforgeeks.org/seven-segment-displays/)
