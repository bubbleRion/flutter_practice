// 5.4.2 AnimatedContainer
// Hero 위젯이 화면전환시 애니메이션 효과를 지원했다면
// AnimatedContainer 위젯은 한 화면 내에서 setState()함수를 호출하여 화면을 새로 그릴 때
// 변경된 프로퍼티에 의해 애니메이션 되도록 해준다.

import 'dart:math';

import 'package:flutter/material.dart';

class _AnimatedContainterPageState extends State<AnimatedContainerPage> {
  var _size = 100.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('AnimatedContainer'),
      ),
      body : Center(
        child : GestureDetector(
          onTap : (){
            final random = Random(); // Random 클래스
            setState(() {
              // 클릭할 때마다 100.0~299.0 사이의 실수를 랜덤하게 얻기
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _size,
            height: _size,
            child: Image.asset('assets/sample.jpg'),
            curve: Curves.fastOutSlowIn,
          ),
        )
      )
    );
  }
}