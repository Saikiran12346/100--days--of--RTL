module majority_detector_tb();
reg a,b,c,d;
wire f;
integer i;
majority_detector dut(a,b,c,d,f);
initial
begin 
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b0;
end
initial
begin
for(i=0;i<16;i=i+1)
begin
{a,b,c,d}=i;
#10;
end
end
initial
$monitor(" input a=%b b=%b c=%b d=%b f=%b",a,b,c,d,f);
initial #200 $finish();
endmodule
