module demultiplexer(in,s0,s1,d0,d1,d2,d3);
input in,s0,s1;
output d0,d1,d2,d3;
assign d0=in&~s1&~s0;
assign d1=in&~s1&s0;
assign d2=in&s1&~s0;
assign d3=in&s1&s0;
endmodule
module controller(A,B,Y,I,S1,S0,D);
input S0,S1;
input I;
input [3:0]A;
input [1:0]B;
output [3:0]Y,D;
demultiplexer dm0(I,S0,S1,D[0],D[1],D[2],D[3]);
or o1 (Y[0],A[0],B[0],D[0]);
bufif1 buf1(Y[1],A[1],D[1]);
notif1 nobuf1(Y[2],A[2],D[2]);
and and1(Y[3],A[3],B[1],D[3]);
endmodule
