module clock_divider_tb;
reg clk,rst;
wire clk_out;
clock_divider dut(.clk(clk),.clk_out(clk_out) ,.rst(rst));
initial
clk=1'b0;
always
#10 clk= ~clk;
initial
begin
$monitor ("clk=%b,rst=%b,clk_out=%b",clk,rst,clk_out);
rst=0;
#20
rst=1;
#100 $finish;
end
endmodule
