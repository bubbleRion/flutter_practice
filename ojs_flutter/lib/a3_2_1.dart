import 'package:flutter/material.dart';
import 'package:ojs_flutter/main.dart';

//3_2_2 앱 실행 부분
void main() => runApp(MyApp()); // 별로 수정할 필요 없음

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Flutter Demo',
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : MyHomePage(title : 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{}

class _MyHomePageState extends State<MyHomePage> {}

//모든 코드는 사실상 마지막 MyHomePageState에 작성

