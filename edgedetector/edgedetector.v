module edgeDetector
(
    input wire clk, reset, 
    input wire level, 
    output reg Mealy,
);

parameter  // 2 states are required for Mealy
    zero = 1'b0,
    one =  1'b1;
  reg stateMealy_reg, stateMealy_next; 
//reg[1:0] stateMoore_reg, stateMoore_next;
  always @(posedge clk, posedge reset)
begin
    if(reset) // go to state zero if rese
        begin
        stateMealy_reg <= zero;
        //stateMoore_reg <= zeroMoore;
        end
    else // otherwise update the states
        begin
        stateMealy_reg <= stateMealy_next;
        //stateMoore_reg <= stateMoore_next;
        end
end
  // Mealy Design 
always @(stateMealy_reg, level)
begin
    // store current state as next
    stateMealy_next = stateMealy_reg; // required: when no case statement is satisfied
    
    Mealy = 1'b0; // set tick to zero (so that 'tick = 1' is available for 1 cycle only)
    case(stateMealy_reg)
        zero: // set 'tick = 1' if state = zero and level = '1'
            if(level)  
                begin // if level is 1, then go to state one,
                    stateMealy_next = one; // otherwise remain in same state.
                    Mealy = 1'b1;
                end
        one: 
            if(~level) // if level is 0, then go to zero state,
                stateMealy_next = zero; // otherwise remain in one state.
    endcase
end
   
endmodule

