module adc_controller(wr,intrupt,clk,digital_data,led_display);
input clk,intrupt;
input [7:0] digital_data;
output reg[7:0]led_display;
reg[5:0]count=0;
reg await=0;
output reg wr;
always@(posedge clk)
begin
if(count==0)
begin
wr=0;
await=1;
end
if (count==5)
begin
wr=1;
await=0;
end
if (await==0)
begin
if(intrupt==0)
begin
led_display = digital_data;
await=1;
end
end
if(await==1)
count=count+1;
if(count==10)
count=0;
end 
endmodule
