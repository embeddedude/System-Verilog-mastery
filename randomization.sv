
class packet;
  rand int data;
  constraint data_range{ 
     data inside{[1000:4000]};
  }
endclass
                      
module tb;
  packet p = new();
  initial begin
    repeat(8) begin
      p.randomize();
      $display("%0d",p.data);
    end
  end
endmodule

      
    // Code your testbench here
// or browse Examples
class packet;
  randc int data;
  constraint c_data {data inside{[30:50]};}
  function int display();
    $display("the value of the packet is %d",data);
  endfunction
endclass

module tb;
  initial begin
    packet p1 = new();
    repeat(15) begin
      p1.randomize();
      p1.display();
      
    end
  end
endmodule
// Code your testbench here
// or browse Examples
class sum;
  rand int q[$];
  constraint q_size{q.size()==9;
  }
  constraint q_value{
    foreach(q[i])
      q[i] inside {[10:20]};
  }
  constraint q_sum{
    q.sum() <100;
  }
  function void display();
    $display("the value of the queue is %p",q);
  endfunction
endclass
module tb;
  initial begin
  sum q1 = new();
  q1.randomize();
  q1.display();
  end
endmodule
    
  
      
        
      
