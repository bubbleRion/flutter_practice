class Person{
  String? name;
  int _age = 0;
  
  int get age => _age;
  void addOneYear(){
    _age++;
  }
}

void main(){
  var person = new Person();

  var person2 = Person();
  person._age = 10;
  person.addOneYear();
  print(person._age);

}