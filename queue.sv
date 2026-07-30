// Code your testbench here
// or browse Examples
// push pop display 
class q;
  rand int queue[$];
  constraint q_size{queue.size() == 5; }
  constraint q_data{
    foreach(queue[i])
      queue[i] inside {[10:20]};}
endclass
module tb;
  initial begin
    q p1 = new();
    p1.randomize();
    p1.queue.push_front(5);
    $display("%p",p1);
    p1.queue.pop_back();
    p1.queue.pop_front();
    $display("%p",p1);
  end
endmodule
