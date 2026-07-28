
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

      
    
