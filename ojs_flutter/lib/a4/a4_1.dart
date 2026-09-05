// 4.1 예제를 연습하는 방법

// 4.1.1 실습 환경 소개
// main.dart 파일을 다음과 같이 수정합니다. MyApp 클래스까지는 공통 코드이며
// 수정하지 않기 때문에 예시 코드에서는 생략합니다.
// 주로 1 body 프로퍼티의 내용을 수정하는 것을 기본으로 한다.

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
      body : Text('여기에 예제 작성'), // 주로 여기에 코딩한다. 1번
    );
  }
}