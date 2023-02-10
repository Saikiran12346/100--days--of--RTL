//piso
module piso(clk, enable, rst, data, out);
  input enable, clk, rst;
  input [3:0] data;
  output out;

  reg out;
  reg [3:0] memory;

  always @ (posedge clk, posedge rst) begin
    if (rst == 1'b1) begin
      out <= 1'b0;
      memory <= data;
    end
    else begin
      if (enable) begin
        out = memory[0];
        memory = memory >> 1'b1;
      end
    end
  end
endmodule
// d_flipflop
module d_flipflop(d, clk, enable, reset, out);
  input d, clk, enable, reset;
  output out;

  reg out;

  always @ (posedge clk or posedge reset) begin
    if (reset)
      out = 0;
    else
      if (enable)
        out = d;
  end
endmodule
//full_adder
module full_adder(a, b, cin, sum, cout);
  input a, b, cin;
  output sum, cout;

  assign {cout, sum} = a + b + cin;

endmodule
//serial_adder
module serial_adder(data_a, data_b, clk, reset, out, cout);
  input [3:0] data_a, data_b;
  input clk, reset;
  output cout;
  output [3:0] out;

  reg [3:0] out;
  reg [2:0] count;
  reg enable, cout;
  wire wire_a, wire_b, cout_temp, cin, sum;

  piso piso_a(clk, enable, reset, data_a, wire_a);
  piso piso_b(clk, enable, reset, data_b, wire_b);
  full_adder adder(wire_a, wire_b, cin, sum, cout_temp);
  d_flipflop dff(cout_temp, clk, enable, reset, cin);

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      enable = 1; count = 3'b000; out = 4'b0000;
    end
    else begin
      if (count > 3'b100)
        enable = 0;
      else begin
        if (enable) begin
          cout = cout_temp;
          count = count + 1;
          out = out >> 1;
          out[3] = sum;
        end
      end
    end
  end
endmodule
