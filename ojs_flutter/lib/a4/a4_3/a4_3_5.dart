// 4.3.5 SizedBox

// 위젯 중에는 크기에 관련된 프로퍼티가 없는 위젯이 많은데 그런 위젯을 특정 크기로 만들고 싶을 때 사용
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
    // return SizedBox(
    //   width : 100,
    //   height: 100,
    //   child : Container(
    //     color : Colors.red,
    //   )
    // );
    return SizedBox(
      width: 100,
      height: 100,
    );
  }
}

// width에 가로 길이, height에 세로 길이를 double 타입으로 지정한다
// SizedBox를 child 없이 단독으로 사용하면 여백을 표혆라는데 사용가능

