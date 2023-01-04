module majority_detector(a,b,c,d,f);
input a,b,c,d;
output f;
wire w1,w2,w3;
assign w1=a&b&d;
assign w2=c&d&b;
assign w3=c&d&a;
assign f=w1|w2|w3;
endmodule
