// 4.3 위치 , 정렬 , 크기를 위한 위젯

// 4.3.1 Center
// 중앙으로 정렬시키는 위젯이다. 상당히 자주사용한다.

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
    return Scaffold(
      appBar : AppBar(
        title : Text('제목'),
      ),
      
      body : Column(
        children: <Widget>[
          Center(
            child : Container(
              color : Colors.red,
              width : 100,
              height: 100,
            )
          )
        ],
      )
    );
  }
}