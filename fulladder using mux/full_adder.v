module multiplexer(a,b,s,y);
input a,b,s;
output y;
assign y=~s&a|s&b;
endmodule
module full_adder(A,B,CIN,SUM,CARRY);
input A,B,CIN;
output SUM,CARRY;
wire w1,w2,w3;
multiplexer mu1 (A,~A,B,w1);
multiplexer mu2 (CIN,~CIN,w1,SUM);
multiplexer mu3 (1'b0,w1,CIN,w2);
multiplexer mu4 (1'b0,A,B,w3);
multiplexer mu5 (w2,w3,w3,CARRY);
endmodule
