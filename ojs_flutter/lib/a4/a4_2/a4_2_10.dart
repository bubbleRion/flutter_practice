// 4.2.10 BottomNavigationBar
// 하단에 2~5개의 탭 메뉴를 구성할 수 있는 위젯이다. 각 탭을 클릭하여 화면을 전환할 때 사용한다.

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label : 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label : 'profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label : 'Notification',
        ),
      ]),
    );
  }
}