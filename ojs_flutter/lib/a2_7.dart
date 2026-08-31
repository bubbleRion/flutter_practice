// 일급 객체

void greeting(String text){
  print(text);
}

void something(Function(int i) f){
  f(10);
}

void main(){
  
  var f = greeting;
  f('hello');

  something((value){
    print(value);
  });
}

