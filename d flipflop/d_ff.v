module nand_gate(c,a,b);
input a,b;
output reg c;
assign c=~(a&b);
endmodule
module not_gate(f,e);
input e;
output f;
assign f=~e;
endmodule
module d_ff (clk,d,q,qbar);
input clk,d;
output q,qbar;
wire w1,w2;
not_gate not1(dbar,d);
nand_gate nand1(w1,clk,d);
nand_gate nand2(w2,clk,dbar);
nand_gate nand3(q,w1,qbar);
nand_gate nand4(qbar,w2,q);
endmodule
