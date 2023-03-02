module transmission_gate_tb;
reg a,control;
wire y;
transmission_gate tg1 (.a(a),.control(control),.y(y));
initial 
begin
control=1'b0;
a=1'b0;
#50
control=1'b1;
a=1'b0;
#50
control=1'b1;
a=1'b1;
end
initial
begin 
$monitor ("a=%b,control=%b,y=%b",a,control,y);
#100
$finish;
end
endmodule
