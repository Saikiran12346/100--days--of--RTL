module full_adder(a,b,cin,sum,cout)
input a,b,cin;
output sum,carry;
always@(a,b,cin)
begin
sum=a^b^cin;
carry=(a^b)&cin|a&b;
end 
endmodule
module add_sub(A,B,K,S,CARRY);
input[3:0]A;
input[3:0]B;
input[3:0]S;
input K;
input CARRY;
wire [3:0]c;
wire [3:0]D;
xor x0(D[0],B[0],K);
xor x1(D[1],B[1],K);
xor x2(D[2],B[2],K);
xor x3(D[3],B[3],K);
full_adder fa0(A[0],D[0],K,S[0],C[0]);
full_adder fa1(A[1],D[1],C[0],S[1],C[1]);
full_adder fa2(A[2],D[2],C[1],S[2],C[2]);
full_adder fa3(A[3],D[3],C[2],S[3],C[3]);
endmodule
