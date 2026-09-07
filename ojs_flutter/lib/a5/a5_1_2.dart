// 5.1.2 CheckBox와 Switch
// 설정 화면 등에 많이 사용되는 체크박스, 라디오 버튼, 스위치를 표현하는 위젯이다.
// Checkbox와 Switch는 모양만 다를 뿐 사용 방법은 동일하다.

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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Checkbox / Radio / Switch'),
      ),
    );
  }
  
}
