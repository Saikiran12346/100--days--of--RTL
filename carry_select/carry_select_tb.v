module carry_select_tb();
reg [3:0]x,y;
reg carry;
wire[3:0]s;
wire cout ;
carry_select dut(.x(x),.y(y),.carry(carry),.s(s),.cout(cout));
initial 
begin
#10 carry=1'b0;x=4'b0001;y=4'b0110;
#10 carry=1'b1;x=4'b0001;y=4'b0110;
end
initial
$monitor("x=%b,y=%b,carry=%b,s=%b,cout=%b",x,y,carry,s,cout);
initial 
#100
$finish;
endmodule
