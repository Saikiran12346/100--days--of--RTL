module tff(q,qbar,clk,rst,t);
input clk;	 
input rst;
input t;
output q,qbar; 
reg q,qbar;
wire qq=t^q;
  always @ (negedge clk or negedge rst)
begin              
if(rst==1'b0)
begin
q=1'b0;
qbar=1'b1;
end	    
else 
begin	 		  
q=qq;	  
qbar=~q;		  
end 
end
endmodule
module asynchronous ( clk, rst,out,T);
  input clk;
  input rst;
  input T;
  output reg [2:0] out;
 wire Q0,Q1,Q2,QN0,QN1,QN2;
  tff dut0 (.q(Q0),.qbar(QN0),.clk(clk),.rst(rst),.t(T));
  tff dut1 (.q(Q1),.qbar(QN1),.clk(Q0),.rst(rst),.t(T));
  tff dut2 (.q(Q2),.qbar(QN2),.clk(Q1),.rst(rst),.t(T));
  //tff dut3 (.q(Q3),.qbar(QN3),.clk(QN2),.rst(rst),.t(T));
  assign out = {Q2,Q1,Q0};
 endmodule
 
