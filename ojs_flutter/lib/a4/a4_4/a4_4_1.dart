// 4.4 버튼 계열 위젯
// 4.4.1 ElevateButoon
// 입체감을 가지는 일반적인 버튼 위젯


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
    return 
    ElevatedButton(
      child: Text('RaisedButton'),
      onPressed: (){
    });
    TextButton(
      child: Text('TextButton'),
      onPressed: (){

    });
    IconButton(
      icon: Icon(Icons.add),
      color : Colors.red,
      iconSize : 100.0,
      onPressed: (){
    });
    FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
    });
  }
}