// 5.4 애니메이션
// 5.4.1 Hero
// Hero 위젯은 화면 전환시 자연스럽게 연결되는 애니메이션을 지원한다.
// 이전 화면으로 돌아갈 때도 자연스럽게 애니메이션이 동작한다.

// Hero 위젯 사용 방법은 애니메이션 효과의 대상이 되는 양쪽 화면의 위젯을 Hero 위젯으로 감싸고
// tag 프로퍼티를 반드시 동일하게 지정해야 한다.

import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Hero'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => HeroDetailPage()),
            );
          },
          child : Hero(
            tag : 'image',
            child : Image.asset(
              'assets/sample.jpg',
              width: 100,
              height: 100,
            )
          )
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Hero Detail'),
      ),
      body: Hero(
        tag : 'image',
        child : Image.asset('assets/sample.jpg'),
      ),
    );
  }
}