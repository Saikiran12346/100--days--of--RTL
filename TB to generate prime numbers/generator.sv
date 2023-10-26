class generator;
  rand int a;
  int b;
  constraint x{a inside{[1:100]} ;}
  function int prime (int a);
    if(a<=1)
      return 2;
    for(int i=2;i<a;i++)
      begin
        if(a%i==0)
         return 3;
      else
        prime=a;
      end
  endfunction
  
  function void post_randomize();
    b=prime(a);
    $display("prime number is %d",b);
  endfunction
endclass
 generator gen;
module top;
  initial
    begin
       gen=new;
      repeat(50)
      assert(gen.randomize());
      $display("randomized data %p",gen.a);
     
    end
endmodule
      
