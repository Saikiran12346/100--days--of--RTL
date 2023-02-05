module multiplexer ( a,  b, c, d , x0, x1, out);
input a,b,c,d,x0,x1;
output out;
 assign out = x1 ? (x0 ? d : c) : (x0 ? b : a); 

endmodule
module demultiplexer(in,y0,y1,d0,d1,d2,d3);
input in,y0,y1;
output d0,d1,d2,d3;
assign d0=in&~y1&~y0;
assign d1=in&~y1&y0;
assign d2=in&y1&~y0;
assign d3=in&y1&y0;
endmodule
module data(A,B,s0,s1);
input[3:0] A;
input s0,s1;
output [3:0] B;
wire w1;
multiplexer mu1(A[0],A[1],A[2],A[3],s0,s1,w1);
demultiplexer dmu1(w1,s0,s1,B[0],B[1],B[2],B[3]);
endmodule

