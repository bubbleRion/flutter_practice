// flutter 버전에 따른 에러 가능성

import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Flutter Demo',
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : MyHomePage(title : 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}): super(key : key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold( // 머티리얼 디자인 기본 뼈대 위젯
      appBar : AppBar( // 상단 앱바
        title : Text(widget.title),
      ),
      body : Center( // 표시할 내용
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'you hame pushed the button this many times:'
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 클릭 시 _incrementCounter()메서드 실행
        tooltip: 'Increment',
        child : Icon(Icons.add), // 상단 앱바
        ),
    );
  }

}