module mux(A,B,S,Y);
input A,B,S;
output reg Y;
always@(A,B,S)
begin
Y=~S&A|S&B;
end 
endmodule
module Dlatch(d,en,rst,q);
input d;  
input en;  
input rst;
output reg q; 
always @(en or rst or d) 
if(rst)
 q <= 0; 
 else
 if(en)
 q<=d;
endmodule
module gate (y,a,b);
input a,b;
output y;
and a1 (y,a,b);
endmodule
module pipeline_latch(data_in,previous,clk,next,data_out,RST);
input data_in,previous,clk,next,RST;
output  reg data_out;
wire w1,w2;
mux mu1(data_in,data_out,next,w1);
gate ga1(w2,previous,clk);
Dlatch da1(w1,w2,RST,data_out);
endmodule

