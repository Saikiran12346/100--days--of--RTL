module edgedetector_tb();

reg reset, clk,level;
wire Melay;

  edgeDetector dut (.clk(clk), .reset(reset), .level(level), .Mealy(Mealy));

initial begin 
clk = 0;
forever #10 clk = ~clk;
end

initial begin
   reset = 1;
   level=0;

#10 reset = 0;
    //level=1;
  #10 level=0;
 #20 level=1;
  #10 level=0;
 #10 level=1;
  #10 level=1;
   #10 level=0;
  #10 level=1;
  $monitor("clk=%b,reset=%b,level=%b,Mealy_tick=%b",clk,reset,level,Mealy);

#100 $finish;
end
  initial
    begin
      $dumpfile("dump.vcd");//file contains information about any value changes on the selected variables. 

    $dumpvars(1);
    end

endmodule
