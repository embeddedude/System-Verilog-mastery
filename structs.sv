module tb;
  typedef struct{
    int age;
    string name;
    struct {int pincode;
            string area;
    } additionalinfo;
  } person;
  initial begin 
    person p1,p2,p3;
    p1 = '{21,"dhanush",'{500049,"hwhwh"}};
    p2 =  '{21,"honey",'{500049,"hwhwh"}};
    $display("%p and %p",p1,p2);
  end
  
endmodule
//using struct inside a struct by declaring using a typedef
module tb;
  typedef struct {
    int age;
    string name;
    
  }details;
  typedef struct{
    int pincode;
    string address;
    details dt;
    
  }additionalinfo;
  additionalinfo ad;
  initial begin
    ad = '{500049,"pragathinagar",'{21,"lp"}};
    $display("%p",ad);
  end 
endmodule
  
