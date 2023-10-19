class generator;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach (a[i])
    if (i<5)
      a[i]==i;
               else 
                 a[i]==10-i;}
endclass
 generator gen;
module top;
  initial
    begin
       gen=new;
      assert(gen.randomize());
      $display("randomized data is %p",gen.a);
    end
endmodule
