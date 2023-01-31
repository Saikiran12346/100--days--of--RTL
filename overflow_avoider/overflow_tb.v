module overflow_tb();

reg [3:0]a,b;
reg cin;
wire [4:0]sum;
wire cout;
wire of;

overflow dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout), .of(of));

initial 
begin       
{a,b,cin} = 0;
#10;
a = 4'b1111; b = 4'b1000; cin = 0;
 #10;
a = 4'b0111; b = 4'b0100; cin = 1'b0;
 #10;

end

initial
begin
$monitor(" a=%b, b = %b, cin=%b ,sum=%b, cout=%b ,of=%b ", a, b, cin, sum, cout, of);
end

endmodule
