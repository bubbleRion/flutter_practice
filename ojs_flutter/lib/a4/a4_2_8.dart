// 4.2.8 PageView
// 여러 페이지를 좌우로 슬라이드하여 넘길 수 있도록 해주는 위젯이다.

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
      body :
      PageView(
        children: <Widget>[
          Container(
            color : Colors.red
          ),
          Container(
            color : Colors.green
          ),
          Container(
            color : Colors.blue
          ),
        ],
      ),
    );
  }
}
