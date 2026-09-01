class Person{
  String? name;
  int age = 0;

  void addOneYear(){
    age++;
  }
}

void main(){
  var person = new Person();

  var person2 = Person();

  person.age = 10;
  person.addOneYear();
  print(person.age);
  
}