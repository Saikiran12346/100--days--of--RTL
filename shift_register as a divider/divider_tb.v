module divider_tb;
  reg [3:0] data;
  reg enable, clk, reset;
  wire out;
  wire [3:0]c;
  

  divider div1 ( clk,enable, reset, data, out,c);

  initial begin
    $monitor("out = %b,c=%b", out,c);
    
    clk = 0;
    data = 4'b1101;
    reset = 1; enable = 1; #10;
    reset = 0; enable = 1; #80;
    reset = 0; enable = 0; #10;
    $finish;
  end

  always #10 clk=!clk;

endmodule
