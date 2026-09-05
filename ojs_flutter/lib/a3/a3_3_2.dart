// 3.3.2 StatefulWidget 실습

import 'package:flutter/material.dart';
import 'package:ojs_flutter/main.dart';

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

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var _text = 'Hello'; // 1

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Hello World'),
      ),
      body : Text(
        _text, // 2
        style : TextStyle(fontSize :  40),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() { // 3
            _text = 'World';
          });
        },
        child : Icon(Icons.touch_app), 
      ),
    );
  }
}

// 1. 'Hello' 값이 할당된 문자열 변수 _text를 준비하고 
// 2. Text 위젯에 표시되게 설정하고
// 3. FloatingActionButton을 클릭했을 때 _text를 'World' 로 변경하고 setState() 메서드로 화면을 갱신한다.

// 예제를 실행하고 버튼을 탭하면 화면의 글자가 'Hello' 에서 'World' 로 변경된다.
// 매우 간단한 예제지만 사용자 행동에 따른 처리의 기본을 배울 수 있다.
// 간단한 예제라 처음 한 번만 텍스트가 변한다.