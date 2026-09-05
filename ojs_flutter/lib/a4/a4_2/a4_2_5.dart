// SingleChildScrollView

// Column을 사용하여 위젯들을 나열하다가 화면 크기를 넘어서면 스크롤이 필요하다
// 그럴때는 SingleChildScrollView로 감싸서 스크롤이 가능하게 할 수 있다.
// SingleChildScrollView는 말 그 대로 하나의 자식을 포함하는 스크롤 가능한 위젯.

// SingleChildScrollView는 하나의 자식 위젯을 가져야 하기 때문에
// Colume을 사용하여 상하 스크롤을 구현할 수 있지만
// 예제에서는 Column 대신 ListBody를 사용했다.
// Column은 기본적으로 표시할 위젯의 크기만큼 가로 길이를 가진다.
// 따라서 스크롤 기능 영역이 좁을 수 있다.
// ListBody를 사용하면 스크롤 가능 영역이 가로로 꽉 차기 때문에 사용자가 스크롤하기 더 쉽다.



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
  final items = List.generate(100,(i) => i).toList(); // 0부터 99까지의 값을 갖는 리스트 생성

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : Text('제목'),
      ),
      body : SingleChildScrollView(
        child: ListBody(
          children: items.map((i) => Text('$i')).toList(),
        ),
      )
    );
  }
}



  