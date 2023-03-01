module priorityencoder (en,i,y);
    // declare port list via input and output
    input en;
    input [7:0]i;
    output [2:0]y;

    // check the logic diagram and assign the outputs
    assign y[2]=i[4] | i[5] | i[6] | i[7] &en;
    assign y[1]=i[2] | i[3] | i[6] | i[7] &en;
    assign y[0]=i[1] | i[3] | i[5] | i[7] &en;

endmodule
module decoder(a, b, c, out);
    input a,b,c;
    output [7:0] out ;
    assign out [0] = (~a&~b&~c) ;
    assign out [1] =(~a&~b&c) ;
    assign out [2] =(~a&b&~c);
    assign out [3] = (~a&b&c);
    assign out [4] = (a&~b&~c);
    assign out [5] = (a&~b&c);
    assign out [6] = (a&b&~c);
    assign out [7] = (a&b&c);
    endmodule
module codeic (x,z,EN);
input [7:0]x;
output[7:0]z;
input EN;
wire [2:0]w;
priorityencoder pa1(EN,x,w);
decoder da1(w[2],w[1],w[0],z);
endmodule

