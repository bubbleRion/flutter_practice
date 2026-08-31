// 일급 객체
import 'dart:math';

void greeting(String text){
  print(text);
}

void something(Function(int i) f){
  f(10);
}

void myPrintFunction(int i){
  print('내가 만든 함수에서 출력한 $i');
}

void main(){
  
  var f = greeting;
  f('hello');

  something((value){
    print(value);
  });

  something(myPrintFunction);
  something((i)=> myPrintFunction(i));
  something((i) => print(i));
  something(print);


  final items = [1,2,3,4,5];
  for (var i = 0; i < items.length; i++){
    print(items[i]); // 1,2,3,4,5
  }
  items.forEach(print); //1,2,3,4,5
  items.forEach((e){
    print(e);
  });
  items.forEach((e)=> print(e));
  items.forEach(print);

  for(var i = 0; i < items.length; i++){
    if(items[i] % 2 == 0){
      print(items[i]);
    }
  }

  items.where((e) => e % 2 == 0).forEach(print);


  for(var i = 0; i < items.length; i++){
    if(items[i] % 2 == 0){
      print('숫자 ${items[i]}');
    }
  }

  items.where((e) => e % 2 ==0).map((e) => '숫자 $e').forEach(print);


  final result = [];
  items.forEach((e){
    if(e % 2 == 0){
      result.add(e);
    }
  });

  final result2 = items.where((e) => e % 2 == 0).toList();

  
  final items2 = [1,2,2,3,3,4,5];

  var result3 = [];
  for (var i = 0; i < items2.length; i++){
    if(items2[i] % 2 == 0){
      result2.add(items2[i]);
    }
  }
  print(result2);

  final result4 = items2.where((e) => e % 2 == 0).toList();

  final result5 = items2.where((e) => e % 2 == 0).toSet().toList();

  var result6 = false;
  for(var i = 0; i < items2.length; i++){
    if(items2[i] % 2 == 0){
      result6 = true;
      break;
    }
  }
  print(result);

  print(items2.any((e) => e % 2 == 0)); // true

  var maxResult = items[0];
  for( var i = 1; i < items.length; i++){
    maxResult = max(items[i] , maxResult);
  }
  print(maxResult);

  print(items.reduce((e,v) => max(e,v)));

  final result7 = items.reduce(max);

}

