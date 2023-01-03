module full_adder(sum,cout,a,b,cin);
input a,b,cin;
output reg sum,cout;
always@(a,b,cin)
begin
 sum=a^b^cin;
 cout=(a^b)&cin|(a&b);
end
endmodule
module array_multiplier(a,b,p);
input [3:0]a;
input [3:0]b;
output[7:0]p;
wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32;
and g0 (w0,a[3],b[0]);
and g1 (w1,a[2],b[0]);
and g2 (w2,a[1],b[0]);
and g3 (p[0],a[0],b[0]);
and g4 (w3,a[3],b[1]);
and g5 (w4,a[2],b[1]);
and g6 (w5,a[1],b[1]);
and g7 (w6,a[0],b[1]);
and g8 (w7,a[3],b[2]);
and g9 (w8,a[2],b[2]);
and g10 (w9,a[1],b[2]);
and g11 (w10,a[0],b[2]);
and g12 (w11,a[3],b[3]);
and g13 (w12,a[2],b[3]);
and g14 (w13,a[1],b[3]);
and g15 (w14,a[0],b[3]);
full_adder fa0(p[1],w15,w2,w6,1'b0);
full_adder fa1(w16,w17,w1,w5,1'b0);
full_adder fa2(p[2],w18,w16,w10,w15);
full_adder fa3(w19,w20,w0,w4,1'b0);
full_adder fa4(w21,w22,w19,w9,w17);
full_adder fa5(p[3],w23,w21,w14,w18);
full_adder fa6(w24,w25,w3,w8,w20);
full_adder fa7(w26,w27,w24,w13,w22);
full_adder fa8(p[4],w28,w26,w23,1'b0);
full_adder fa9(w29,w30,w7,w12,w25);
full_adder fa10(p[5],w31,w29,w28,w27);
full_adder fa11(p[6],p[7],w11,w31,w30);
endmodule
