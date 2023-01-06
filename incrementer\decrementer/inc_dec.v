module half_adder(a,b,sum,cout);
input a,b;
output reg sum,cout;
always@(a,b)
begin
 sum=a^b;
 cout=a&b;
end
endmodule
module inc_dec (A,K,S,CARRY);
input[3:0]A;
input[3:0]S;
input K;
output CARRY;
wire [3:0]c;
wire [3:0]D;
xor x0(D[0],A[0],K);
xor x1(D[1],A[1],K);
xor x2(D[2],A[2],K);
xor x3(D[3],A[3],K);
half_adder ha0(D[0],1'b1,S[0],c[0]);
half_adder ha1(D[1],c[0],S[1],c[1]);
half_adder ha2(D[2],c[1],S[2],c[2]);
half_adder ha3(D[3],c[2],S[3],CARRY);
endmodule
