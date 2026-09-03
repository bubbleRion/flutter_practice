// ListView, ListTile
// ListView는 리스트를 표시하는 위젯이다.

// ListView에 표시할 각 항목의 레이아웃은 직접 정의해도 되지만
// 리스트 아이템을 쉽게 작성할 수 있는 1 ListTile 위젯을 사용하면 편리하다.

// 이 둘을 조합하면 표준적인 리스트를 쉽게 만들 수 있다.
// ListView의 2 children 프로퍼티에 다수의 위젯을 배치하면
// 정적인 리스트를 쉽게 만들 수 있다.

// 원래 bdoy : 에 달아야하는데 걍 void에 달음.
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : Text('제목'),
      ),
      body :
      ListView(
        scrollDirection : Axis.vertical,
        children : <Widget>[ // 2 
          ListTile( // 1
            leading: Icon(Icons.home),
            title : Text('Home'),
            trailing : Icon(Icons.navigate_next),
            onTap : () {},
          ),
          ListTile(
            leading: Icon(Icons.event),
            title : Text('Event'),
            trailing : Icon(Icons.navigate_next),
            onTap : () {},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title : Text('Camera'),
            trailing : Icon(Icons.navigate_next),
            onTap : () {},
          )
        ],
      ),
    );
  }
}


  


// ListTile 위젯은 3 leading, 4 title, 5 trailing 프로퍼티가
// 각각 왼쪽, 중앙, 오른쪽 위치를 담당해 자유롭게 아이콘이나 글자를 배치할 수 있다.
// ListTile의 6 onTap 프로퍼티에는 리스트의 항목을 tap(터치)
// 했을 때 실행해야 하는 동작을 정의한 함수를 작성한다.