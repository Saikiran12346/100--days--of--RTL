class generator;
  rand int a[10];
  //constraint x{a.size==10;}
  constraint y{foreach (a[i])
    foreach (a[j])
  if(i!=j)
  a[i]!=a[j];}
    constraint z {foreach (a[i])
	a[i] inside{[1:50]};}
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
      
