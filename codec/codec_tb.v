module codec_tb;
reg [7:0] x;
reg EN;
wire [7:0]z;
codeic ca1(.x(x),.z(z),.EN(EN));
initial
begin
EN=0;
x=8'b01000000;
#10
EN =1;
x=8'b01000000;
#10
EN =1;
x=8'00100000;
#10
EN =1;
x=8'b01001000;
#10
EN =1;
x=8'b01000010;
end
initial
begin 
$monitor ("x=%b,z=%b,EN=%b",x,z,EN);
#100
$finish;
end
endmodule
