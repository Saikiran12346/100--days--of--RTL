module controller_tb();
reg I,S1,S0;
reg [3:0]A;  
reg [1:0]B;
wire [3:0]Y,D;
controller dut(.A(A),.B(B),.Y(Y),.I(I),.S1(S1),.S0(S0),.D(D));
initial
begin
#10 I=1'b1; S0=1'b0;S1=1'b0;A=4'b1110;B=2'b10;
#10 I=1'b1; S0=1'b0;S1=1'b1;A=4'b1110;B=2'b10;
#10 I=1'b1; S0=1'b1;S1=1'b0;A=4'b1110;B=2'b10;
#10 I=1'b1; S0=1'b1;S1=1'b1;A=4'b1110;B=2'b10;
end
initial
$monitor("I=%b,A=%b,B=%b,S0=%b,S1=%b,Y=%b",I,A,B,S0,S1,Y);
initial
#100
$finish;
endmodule
