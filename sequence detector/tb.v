module tb;
 reg sequence_in;
 reg clock;
 reg reset;

 wire detector_out;
sequence_detector uut (
  .sequence_in(sequence_in), 
  .clock(clock), 
  .reset(reset), 
  .detector_out(detector_out)
 );
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end 
 initial begin

  sequence_in = 0;
  reset = 1;
  
  #30;
      reset = 0;
  #40;
  sequence_in = 1;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #20;
  sequence_in = 1; 
  
   $monitor("clock=%b,reset=%b,sequence_in=%b,detector_out=%b",clock,reset,sequence_in,detector_out);
      #200 $finish;
    end
  initial
    begin
      $dumpfile("dump.vcd");//file contains information about any value changes on the selected variables. 

    $dumpvars(1);
    end
endmodule
