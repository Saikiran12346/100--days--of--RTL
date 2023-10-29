 class generator;
   rand int a[10];
  constraint x {foreach(a[i])
    a[i] inside {[0:100]};}
    constraint y {foreach (a[i])   // consecutive values
     a[i]==i;}
   constraint z {foreach (a[i])   //non consecutive values
     foreach (a[j])
       if(i !=j)
         a[i]!=a[j];}
   endclass
   generator gen;
module top;
  initial
    begin
      gen=new();
      assert(gen.randomize());
      $display("randomized values are %p",gen.a);
    end
      endmodule
      
