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

void main(){
  ListView(
    ScrollDirection : Axis.vertical,
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
}