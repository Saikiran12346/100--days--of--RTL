module serial_adder_tb;
  reg [3:0] data_a, data_b;
  reg clk, reset;

  wire [3:0] out;
  wire cout;

  serial_adder s_adder(data_a, data_b, clk, reset, out, cout);

  initial begin
    $monitor("data_a = %4b, data_b = %4b, reset = %b, out=%b", data_a, data_b, reset, out);
    
    clk = 0;
    data_a = 4'b1000; data_b = 4'b0010; reset = 1; #20;
    data_a = 4'b1000; data_b = 4'b0010; reset = 0; #200;
    $finish;
  end

  always #10 clk = !clk;

endmodule
