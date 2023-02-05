module communication_tb();
reg s0,s1;
reg [3:0]A;  
wire [3:0]B;
data dut(.A(A),.B(B),.s1(s1),.s0(s0));
initial
begin
#10 s0=1'b0;s1=1'b0;A=4'b1110;
#10 s0=1'b0;s1=1'b1;A=4'b1110;
#10 s0=1'b1;s1=1'b0;A=4'b1110;
#10 s0=1'b1;s1=1'b1;A=4'b1110;
end
initial
$monitor("A=%b,B=%b,s0=%b,s1=%b,",A,B,s0,s1);
initial
#100
$finish;
endmodule
