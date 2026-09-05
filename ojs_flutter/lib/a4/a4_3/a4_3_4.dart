// 4.3.4 Expanded
// 자식 위젯의 크기를 최대한으로 확장시켜주는 위젯이다.
// 여러 위젯에 동시에 적용하면 flex 프로퍼티에 정숫값을 지정하여 비율을 정할 수 있으며 기본 값은 1이다.

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
    return Column(
      children: <Widget>[
        Expanded(
          flex : 2,
          child : Container(
            color : Colors.red,
          ),
          
        ),
        Expanded(
          child : Container(
            color : Colors.green,
          ),
        ),
        Expanded(
          child : Container(
            color : Colors.blue
          ),
        ),
      ],
    );
  }
}