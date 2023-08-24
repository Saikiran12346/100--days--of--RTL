module edgedetector(clk,reset,level,moore);
  input clk,reset,level;
  output reg moore;
  localparam [1:0]
  zero=2'b00,
  spike=2'b01,
  one=2'b10;
  reg [1:0] state_reg,state_next;
  always@(posedge clk,posedge reset)
    begin
    if (reset)
      begin
      state_reg=zero;
      end
      else
        state_reg=state_next;
    end
//moore design
  always@(state_reg,level)
    begin
    state_next=state_reg;
  moore=1'b0;
  case(state_reg)
    zero:
      begin
        if(level)
      begin
      state_next=spike;
    moore = 1'b0;
      end
    else
      state_next=zero;
      end
    spike:
      begin
        if (level)
      begin
        state_next=one;
        moore =1'b1;
      end
        else
          state_next=zero;
      end
    one:begin
      if(level)
        begin
      state_next=one;
    moore=1'b0;
        end
    else
      state_next=zero;
      end
      endcase
      end
      endmodule
        
    
  
 
