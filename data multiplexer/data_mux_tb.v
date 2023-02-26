module data_mux_tb;
reg [15:0] data_1,data_2;
reg clk;
wire[15:0] out;
data_mux dut(.data_1(data_1),.data_2(data_2),.clk(clk),.out(out));
initial
begin
clk=0;
data_1=10;
data_2=20;
#10
data_1=10;
data_2=20;
#10
data_1=30;
data_2=40;
#10
data_1=50;
data_2=60;
end
always #10 clk=~clk;
initial
begin
$monitor("data_1=%d,data_2=%d,out=%d,",data_1,data_2,out);
#200
$finish;
end
endmodule
