//packed arrasy of type(1d,2d,3d)
module tb;
  bit [7:0] arr;
  initial begin
  arr = 8'b10101010
  $display("the value is %b",arr);
  end
endmodule
// 2d packed 
module tb;
  bit [2:0][3:0] arr;
  bit [12:0] out;
  initial begin
  arr = 12'b101000110011;
  out = arr[1];
  $display("the output is %0b",out);
  out = 0;
  out = arr[1][3:0];
  $display("the output is %0b",out);
  end 
endmodule
