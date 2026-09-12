// 5.2.2 DatePicker
// 날짜를 선택할 때 사용

// 기본 틀
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Flutter Demo',
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('TextButton'),
      onPressed: () {
        Future<DateTime?> selectedDate = showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2030),
          builder: (BuildContext context, Widget? child) {
            return Theme(
              data: ThemeData.dark(),
              child: child!,
            );
          },
        );
      },
    );
  }
}

// 함수의 프로퍼티에는 context를 인수로 전달해야 하고, initialDate에는 초기 선택값을 DateTime의 인스턴스로 정의한다.
// 여기서 사용된 DateTime.now() 함수는 오늘 날까를 나타낸다.
// firstDate와 lastDate 프로퍼티는 말 그대로 DatePicker에서 표시할 날짜의 범위를 정할 수 있다.
// builder 프로퍼티는 테마를 설정할 때 사용한다. Theme 클래스를 사용하여 다크 테마를 적용할 수도 있다.
// builder 프로퍼티를 정의하지 않으면 기본 형태로 표시된다.

// showDataPicker() 함수가 반환하는 Future<DateTime> 타입은 미래에 DateTime 타입의 데이터를 받는다는 것을 정의한 특별한 타입이다.
// Future 타입은 값이 결정될 때까지 코드가 블록(앱이 멈추는 것이 아님)되며 then() 메서드를 통해 값이 결정되었을 때의 처리를 할 수 있다.
// 오래 걸리는 처리를 할 때 사용한다.

