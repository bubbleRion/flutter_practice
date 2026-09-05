// 4.3.2 Padding

// 안쪽 여백을 표현할 때 사용하는 위젯
/// {Padding : 20px}

// 안쪽 여백은 padding 프로퍼티에 값을 지정한다.
// 이 값은 EdgeInsets 클래스를 사용하여 설정하며 다음과 같이 여러 방법을 제공한다.
// 앞에 const를 붙이면 컴파일 타임?에 상수로 정의되어 다시 사용되는 부분이 있을 경우
// 메모리에 있는 값을 재사용하는 이득이 있다.

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
    return Padding(
      padding : const EdgeInsets.all(40.0),
      child : Container(
        color : Colors.red,
      ),
    );
  }
}

// EdgeInsets.all([double])
// EdgeInsets는 여러 함수를 제공한다. all()함수는 네 방향 모두 값은 값을 지정한다.
// EdgeInsets.only({left : [왼쪽] , top :[위] , right :[오른쪽], bottom : [아래]})
// only()함수는 상하좌우 중에서 원하는 방향에만 값을 지정한다. 지정하지 않은 방향에는 기본값 0.0이 지정된다
// EdgeInsets.fromLTRB([왼쪽] , [위] , [오른쪽], [아래])
// fromLTRB() 함수는 네 방향의 값을 각각 지정한다.