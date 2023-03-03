module pipeline_tb;
reg data_in,previous,clk,next,RST;
wire data_out;
pipeline_latch dut (.data_in(data_in),.previous(previous),.clk(clk),.next(next),.data_out(data_out),.RST(RST));
initial
begin 
RST=0;
clk=1;
data_in=1;
next=1;
previous=0;
#30
RST=0;
clk=1;
data_in=1;
next=1;
previous=1;
#30
RST=0;
clk=1;
data_in=0;
next=1;
previous=1;
end 
initial
begin 
$monitor ("RST=%b,data_in=%b,clk=%b,data_out=%b",RST,data_in,clk,data_out);
#100
$finish;
end
endmodule


