module full_adder(a,b,sum,cin,cout);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=(a & b) | cin & (a ^ b);
endmodule


module overflow(a,b,sum,cin,cout,of);

input [3:0]a,b;
input cin;
output [4:0]sum;
output cout;
output reg of;
wire w1,w2,w3,w4;

full_adder f1(a[0],b[0],sum[0],cin,w1);
full_adder f2(a[1],b[1],sum[1],w1,w2);
full_adder f3(a[2],b[2],sum[2],w2,w3);
full_adder f4(a[3],b[3],sum[3],w3,w4);
full_adder f5(a[3],b[3],sum[4],w4,cout);

always @(cin or cout)
begin

if(w4^cout)
begin
of=1;
$display("overflow detected for input %b , %b", a, b);
end

else

begin
of =0;
$display("overflow notdetected for input %b , %b", a, b);
end

end
 
endmodule
