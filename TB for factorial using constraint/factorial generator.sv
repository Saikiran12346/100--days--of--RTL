class generator;
  rand int even[];
  rand int odd[];
  function int fact(int i);
    if(i==0)
    fact=1;
    else 
      fact=i*fact(i-1);
  endfunction
    
 constraint x{even.size==5;}
  constraint y{odd.size==5;}
 constraint z{foreach (even[i]) 
   even[i]==fact(2*(i+1));}
  constraint a{foreach (odd[i])
    odd[i]==fact ((2*i)+1);}
     
endclass
 generator gen;
module top;
  initial
    begin
       gen=new;
      assert(gen.randomize());
      $display("randomized data is %p",gen.even);
      $display("randomized data is %p",gen.odd);
    end
endmodule
      
               
  
