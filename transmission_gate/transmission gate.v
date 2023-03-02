module transmission_gate (a,control,y);
input a,control;
output y;
wire control_bar;
assign control_bar=~control;
nmos n1(y,a,control);
pmos p1(y,a,control_bar);
endmodule
