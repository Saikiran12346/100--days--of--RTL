module full_adder_tb();
reg A;
reg B;
reg CIN;
wire SUM;
wire CARRY;
full_adder dut (.A(A),.B(B),.CIN(CIN),.SUM(SUM),.CARRY(CARRY));
initial 
begin
A=1'b0;B=1'b1;CIN=1'b1;
#10
A=1'b1;B=1'b0;CIN=1'b1;
#10
A=1'b1;B=1'b0;CIN=1'b1;
end
initial
begin
$monitor("A=%b,B=%b,CIN=%b,SUM=%b,CARRY=%b",A,B,CIN,SUM,CARRY);
end 
endmodule
