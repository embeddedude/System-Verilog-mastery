module tb;
  typedef enum {green = 2,red,yellow,orange=6,black}colour;
  colour c;
  initial begin
    c=green;
    $display("current colour %s",c.name());
    c = c.next();
    $display("the next colur is %s",c.name());
    c = c.prev();
    $display("the previous colour is %s",c.name());
  end 
endmodule
