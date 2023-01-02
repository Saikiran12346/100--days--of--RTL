module addsub_tb();
reg[3:0]a;
reg[3:0]b;
reg k;
wire[3:0]sum;
wire[3:0]carry;
add_sub dut(.A(a),.B(b),.K(k),.S(sum),.CARRY(carry));
initial
begin
#10 k=1'b0;a=4'b0111;b=4'b0010;
#10 k=1'b0;a=4'b0111;b=4'b0010;
#10 k=1'b1;a=4'b0111;b=4'b0010;
#10 k=1'b1;a=4'b0111;b=4'b0010;
end
initial
$monitor("k=%b,a=%b,b=%b,sum=%b,carry=%b",k,a,b,sum,carry);
initial
#100
$finish;
endmodule
