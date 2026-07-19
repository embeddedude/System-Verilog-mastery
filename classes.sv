class myclass;
  int x;
  int y;
  
  function byte mul(int x,int y);
    return x*y;
  endfunction
endclass

module tb;
    myclass obj1;
    initial begin
    obj1 = new();
      $display("result = %0d",obj1.mul(10,5));
    end
endmodule

