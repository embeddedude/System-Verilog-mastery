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

/*Problem Statement – Bank Account Class

Create a bank_account class in SystemVerilog with properties for the account holder's name and balance. Implement methods to deposit money, withdraw money (only if sufficient balance is available), and display the account details. Write a testbench to create an object, perform multiple transactions, and verify the functionality.
*/

class bacc;
  string name;
  rand int balance;
  rand int wit;
  rand int dep;
  constraint balch{balance inside {[1000:10000]};}
  function void deposit(int dep);
    balance += dep;
    $display({"the deposit amount is %0d \n",
              "  the total amount is %0d "},dep,this.balance);
  endfunction
  function void withdraw(int wit);
    if (wit < balance) begin
    balance -= wit;
      $display({"the withdrawn amount is %0d \n", "  the total amount is %0d "},wit,this.balance);
    end
    else 
      $display("insuffecient funds");
    
  endfunction
  function int show();
    $display("name: %0s \n\
              total amount : %0d",this.name,this.balance);
  endfunction
endclass
module tb;
  bacc ac1;
  initial begin
    ac1 = new();
    ac1.name = "dhanush";
    if(ac1.randomize()) begin
      ac1.show();
    end
    ac1.deposit(3000);
    ac1.withdraw(4000);
    ac1.show();
  end
endmodule
