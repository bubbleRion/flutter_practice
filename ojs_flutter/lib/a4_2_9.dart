// 4.2.9 AppBar , TabBar , Tab , TabBarView

// 이 위젯들을 조합하여 PageView와 유사하지만 페이지와 탭이 연동되는 화면을 구성할 수 있다.

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
       child: Scaffold(
        appBar : AppBar(
          title : Text('Tab'),
          bottom : TabBar(
            tabs :<Widget>[
              Tab(icon : Icon(Icons.tag_faces)),
              Tab(text : '메뉴2'),
              Tab(icon : Icon(Icons.info), text : '메뉴3'),
            ]
          )
        ),
        body : TabBarView(
          children: <Widget>[
            Container(color : Colors.yellow),
            Container(color : Colors.orange),
            Container(color : Colors.red),
          ],
        )
      ),
    );
  }
}
