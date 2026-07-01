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
