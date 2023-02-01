module adc_controller_tb();
reg clk,intrupt;
wire wr;
wire[7:0]led_display;
reg[7:0]digital_data;
reg await;
adc_controller dut(.wr(wr),.intrupt(intrupt),.clk(clk),.digital_data(digital_data),.led_display(led_display));
initial
begin
clk=0;
#10 digital_data=8'b01101100;intrupt=0;
#10 digital_data=8'b01101100;intrupt=0;
end
always#5 clk=~clk;
initial
begin
$monitor(" digital_data = %b, wr=%b ,intrupt=%b, led_display=%b  ", digital_data, wr, intrupt, led_display);
#100 $finish;
end

endmodule
