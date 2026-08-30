import 'a2_5.dart';

class Rectangle{
  num left , top , width , height;
  Rectangle(this.left , this.top , this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

class Hero{
  String name = '영웅';

  void run(){}
}
class SuperHero extends Hero{

  @override
  void run(){
    super.run(); // 부모의 run을 실행
    this.fly(); // 추가로 fly도 실행
  }

  void fly(){}
}

abstract class Monster{
  void attack();
}
abstract class Flyable{
  void fly();
}
class Goblin implements Monster{
  @override
  void attack(){
    print('goblin attack!');
  }
}

class Bat implements Monster , Flyable{
  @override
  void attack(){
    print('Bat attack!');
  }
  @override
  void fly(){
    print('being being 펄럭');
  }
}

// class DarkGoblin extends Goblin with Hero{
// 
// }

void main(){
  var person = Person();
  // person._age = 10; 에러

  print(person.age);

  var hero = SuperHero();
  hero.run();
  hero.fly();
  print(hero.name);
}
