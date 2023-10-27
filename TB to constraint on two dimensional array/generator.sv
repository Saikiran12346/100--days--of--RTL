class generator;
  rand int a[2][4];
  constraint x{foreach (a[i])
    foreach (a[i][j])
      if(i==0)
        a[i][j]%4==0;
               else
                 a[i][j]%2 !=0 && a[i][j]%3==0 ;}
  constraint y{foreach (a[i])
    foreach (a[i][j])
    a[i][j]inside {[1:100]};}
endclass
generator gen;
module top;
 initial
   begin
     gen=new();
     assert(gen.randomize);
     $display("randomized values are %p",gen.a);
   end
endmodule
               
