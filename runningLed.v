`timescale 1ns / 1ps
module runningLed(
input clock,
input reset,
input [7:0] initState,
output reg [7:0] led
);

reg [30:0] counter;

always @(posedge clock)
begin
    if(counter == 100000000)
        counter <= 0;
    else
        counter <= counter + 1'b1;
end

always @(posedge clock)
begin
    if(reset)
        led <= initState;
    else if(counter == 100000000)
        led[7:0] <= {led[0],led[7:1]};
    
end
endmodule
