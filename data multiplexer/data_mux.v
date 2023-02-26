module data_mux(data_1,data_2,clk,out);
input  [15:0] data_1,data_2
input clk;
output reg [15:0] out;
reg [15:0]count;
initial
count<=0;
always@(posedge clk)
begin
count=count+1;
if(count%2==0)
out <=data_1;
else
out <=data_2;
end
endmodule
