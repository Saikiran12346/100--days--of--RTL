module array_multiplier_tb();
reg [3:0]a;
reg [3:0]b;
wire [7:0]p;
array_multiplier dut(a,b,p);
initial
begin
#10 a=4'b0010;b=4'b0011;
#10 a=4'b0100;b=4'b0010;
end
initial
$monitor("a=%b,b=%b,p=%b",a,b,p);
initial
#100
$finish;
endmodule
