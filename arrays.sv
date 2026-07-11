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
//1d unpacked array 
module tb;
  int arr[16];
  int sum = 0;
  initial begin
    for(int i=0;i<16;i++) begin
      arr[i] = i+1;
    end 
    for(int i=0;i<16;i++) begin
      sum +=arr[i];
    end
      $display("the sum is %0d",sum);
    end
endmodule

module test;
  int arr[24];
  int art[4];
  //indexing method
  initial begin
    for(int i = 0;i<24;i++)begin
      arr[i]+=i;
    end
    for(int i = 0;i<24;i++) begin
      $display("the value of the array is arr[%0d] is %0d",i,arr[i]);
    end
  end 
  //array aggregate method
  initial begin
    art = '{1'b1,3'b001,2'b10,4'b1001};
    $display("the array is %p",art);
  end
endmodule

//2d and 3d unpacked arrays
