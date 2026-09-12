// 5.3 이벤트
// onTap, onPressed 등의 이벤트를 기본 프로퍼티로 가지고 있지 않은 위젯에 이벤트를 적용가능하게 해주는 위젯.

// 5.3.1 GestureDetector와 Inkwell
// GestureDetector와 Inkwell 위젯은 터치 이벤트를 발생시킨다.
// onTap 프로퍼티를 가지고 있어서 child 프로퍼티에 어떠한 위젯이 와도 클릭 이벤트를 작성할 수 있다.
// 따라서 Text, Image등의 위젯에도 간단히 클릭 이벤트를 추가할 수 있다.

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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap : (){
              print('GestureDetector 클릭!');
            },
            child: Text('나를 클릭해'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: (){
              print('InkWell 클릭!');
            },
            child: Text('나를 클릭해!!'),
          )
        ],
      ),
    );
  }
}