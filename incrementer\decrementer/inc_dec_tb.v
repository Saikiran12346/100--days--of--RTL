module inc_dec_tb();
reg[3:0]a;
reg k;
wire[3:0]sum;
wire[3:0]carry;
inc_dec dut(.A(a),.K(k),.S(sum),.CARRY(carry));
initial
begin
#10 k=1'b0;a=4'b0111;
#10 k=1'b1;a=4'b0111;
end
initial
$monitor("k=%b,a=%b,sum=%b,carry=%b",k,a,sum,carry);
initial
#100
$finish;
endmodule
