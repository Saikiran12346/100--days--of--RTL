module d_ff_tb;
reg clk,d;
wire q,qbar;
d_ff dut (.clk(clk),.d(d),.q(q),.qbar(qbar));
initial
clk=1'b0;
always
#10 clk= ~clk;
initial
begin
d=1'b0;
#20
d=1'b1;
#20
d=1'b0;
end
initial
begin
$monitor("d=%b,q=%b,qbar=%b",d,q,qbar);
#100
$finish;
end
endmodule
