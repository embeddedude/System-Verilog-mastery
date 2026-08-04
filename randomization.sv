
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
