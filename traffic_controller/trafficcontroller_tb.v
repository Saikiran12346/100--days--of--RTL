module TrafficLight_tb();

reg rst, clk;
wire [2:0] LED_NS, LED_WE;

TrafficLight L(clk, rst, LED_NS, LED_WE);

initial begin 
clk = 1;
forever #1 clk = ~clk;
end

initial begin
   rst = 1;

#10 rst = 0;

#60;
end

endmodule
