// 3.3 실습
// 3.3.1 StatelessWidget 실습

import 'package:flutter/material.dart';
import 'package:ojs_flutter/a3_2_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : Scaffold(
        appBar: AppBar(
          title : Text('hello world'),
        ),
        body: Text(
          'hello world',
          style: TextStyle(fontSize: 40),
          )
      )
    );
  }
}

// StatelessWidget의 경우에는 MaterialApp의 home에 바로 작성할 수 있다.
// 이번엔 간단히 연습 겸 한 번에 작성해봤다.

// 물론 앞에서 살펴봤던 샘플 앱처럼 다음과 같이 별도의 클래스로 분리할 수도 있다.
// 클래스나 메서드를 분리하면 코드를 더 작은 단위로 유지하여 가독성이나 유지보수 측면에서 장점을 가진다.
// 위 코드와 아래 코드는 동일한 동작을 한다.
// MyApp 클래스는 최상단에 항상 등장하는 클래스이고, MyHomePage 클래스는 실제 표시할 화면에 대한 코드이다.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home : MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Hello world'),
      ),
      body : Text(
        'hello world',
        style : TextStyle(fontSize: 40),
      ),
    );
  }
}


