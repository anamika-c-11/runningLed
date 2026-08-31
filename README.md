# runningLed
Designing a running LED display on Zedboard using Verilog and Xilinx Vivado. 

### How It Works
It uses a 100 MHz clock and a counter to create one second delay between LED transitions. The 8-bit LED pattern is circularly right shifted by one position every second, creating a running LED effect. The reset input initializes the LED pattern using the input from switches.

#### Code Attribution

This project uses code from the following GitHub repository:

- Author: vipinkmenon
- Source: https://github.com/vipinkmenon/runningLED
