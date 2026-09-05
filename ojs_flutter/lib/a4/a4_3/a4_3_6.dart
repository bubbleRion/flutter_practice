// 4.3.6 Card
// 카드 형태의 모양을 제공하는 위젯
// 기본적으로 크기가 0이므로 자식 위젯의 크기에 따라 크기가 결정됨

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


// 1 elevation 프로퍼티를 지정하여 그림자의 깊이를 조절할 수 있다.
// 좀 더 깊은 그림자를 표현하려면 더 큰 값을 지정한다.

// shape 프로퍼티는 카드 모양을 변경하는 방법을 제공하며, 여기서는 RoundedRectangleBorder
// 클래스의 인스턴스를 지정했다.
// RoundedRectangleBorder 클래스는 borderRadius 프로퍼티에 
// BorderRadius.circular () 메서드를 지정하여 카드 모서리의 둥근 정도를 실숫값으로 조절한다
// 값이 클수록 더 둥글게 된다.
/// css랑 비스무리하네


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
        child : Card(
        shape : RoundedRectangleBorder( // 2
          borderRadius: BorderRadius.circular(16.0), // 3
        ),
        elevation: 4.0, // 그림자 깊이 1
        child : Container(
          width: 200,
          height: 200,
        ),
      )
    );
  }
}


// 중앙에 정렬된 위젯은 이렇게 Center 위젯으로 감싼 것으로 보면된다.
// 앞으로는 중앙에 표시 되는 위젯의 예제 코드에서는 Center를 생략하겠다.