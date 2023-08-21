module tb;
  reg T,clk,rst;
  wire [2:0]out;
  asynchronous  dut (clk,rst,out,T);
   always #10 clk=~clk;
  initial 
    begin
    clk=1'b0;
    rst=1'b0;
   #10 rst=1'b1;
      #10 T=1'b1;
      #10 $monitor("T=%b,clk=%b,out=%b",T,clk,out);
   #300 $finish;
    end 
  initial
    begin
      $dumpfile("dump.vcd");//file contains information about any value changes on the selected variables. 

    $dumpvars(1);
  end
endmodule
