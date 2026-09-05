// 4.3.3 Align
// 자식 위젯의 정렬 방향을 정할 수 있는 위젯. 원하는 방향으로 위젯을 정렬할 때 사용한다.

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
  Widget build(BuildContext context){
    return Align(
      alignment: Alignment.bottomRight,
      child : Container(
        color : Colors.red,
        width : 100,
        height : 100,
      ),      
    );
  }
}

// alignment 프로퍼티에 정의할 수 있는 값들은 Alignment 클래스에 정의되어 있다.
// bottomLeft => 하단 왼쪽
// bottomCenter => 하단 중앙
// bottomRight => 하단 오른쪽
// centerLeft => 중단 왼쪽
// center => 중단 중앙
// centerRight => 둥단 오른쪽
// topLeft => 상단 왼쪽
// topCenter => 상단 중앙
// topRight => 상단 오른쪽