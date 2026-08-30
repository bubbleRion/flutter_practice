class MyClass{
  bool isEven(int number){
    return number % 2 == 0;
  }
}

void main(){
  var myClass = MyClass();
  print(myClass.isEven(10));
  something('홍길동' , age : 10);
  something('홍길동');
}

class Person {
  String name;
  int? age;
  Person(this.name , {this.age});
  void greeting(){
    print('안녕하세요 저는 $name입니다.');
  }
}

void something(String name , {int age = 10}){
  
}

