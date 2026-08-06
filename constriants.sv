// Code your testbench here
// or browse Examples
class q;
  rand int w[$];
  constraint w_size{(w.size()==5);}
  constraint w_val{
    foreach (w[i])
      w[i] inside{[10:20]};
  }
    function void display();
      $display("the value of the q is %p",w);
    endfunction
  
endclass

class q1 extends q;
  constraint w_val1{
    foreach (w[i])
      w[i] inside{[15:25]};
  }
endclass
class q2 extends q;
  constraint w_val{
    foreach (w[i])
      w[i] inside{[10:25]};
  }
endclass
module tb;
  initial begin
    q w1=new();
    q1 w2=new();
    q2 w3=new();
    w1.randomize();
    w2.randomize();
    w3.randomize();
    w1.display();
    w2.display();
    w3.display();
  end
endmodule
      
    
