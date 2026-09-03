// 4.2.4 Stack

// Stack 위젯은 children에 나열한 여러 위젯을 순서대로 겹치게 한다.

// 4_1.dart를 옮겨옴

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
// 여기까지는 공통 코드.

// 여기;부터 수정.
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : Text('제목'),
      ),
      body : Stack(
        children: <Widget>[
          Container(
            color : Colors.red, // 빨강
            width : 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color : Colors.green, // 초록
            width : 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color : Colors.blue, // 파랑
            width : 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      )
    );
  }
}