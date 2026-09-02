// Scaffold 클래스와 AppBar 클래스
import 'package:flutter/material.dart';

// 이제 _MyHomePageState 클래스의 build 메서드가 호출될 때 불리는 scaffold 클래스를 알아보자.
// Scaffold 클래스는 머티리얼 디자인 앱을 만들 때 뼈대가 되는 위젯이다.
// 즉, 머티리이얼 디자인 앱을 만든다면 MaterialApp > Scaffold가 기본 형태이다.

// MyApp(StatelessWidget) > MaterialApp > Scaffold > appBar > body
// 머티리얼 앱의 기본 형태
/// 책에서는 그림으로 되어 있어서 개념만 위의 형태로 적음

// 만약 Scaffold를 작성하지 않는다면 상단 앱바가 없고 머티리얼 디자인이 적용 안 된 화면이 그려지므로
// 이 구조를 유지하는 것이 디자인 통일에 유익하다.

// 카운터 앱의 Scaffold 클래스는 다음과 같이 appBar, body, floatingActionButton을 정의한다.

Scaffold(
  appbar : AppBar( // 1
    title : Text(widget.title), // 2
  ),
  body : // ...생략...
  floatingActionButton : // ...생략...
);

// 1. appBar에 AppBar 클래스의 인스턴스를 전달한다.
// AppBar는 머티리얼 디자인 앱에서 상단의 제목과 메뉴를 표시하는 영역을 나타낸다.

// 2. AppBar 클래스는 title 프로퍼티에 Text 위젯을 정의했다. Text 위젯은 글자를 나타내는 위젯이며
// 인수로 widget.title 값을 넘겨받아 화면에 표시한다. widget은 StatefulWidget 클래스 (MyHomePage)의 프로퍼티를 참조할 떄 사용한다.

// body 코드를 살펴보자
int _counter = 0; // 3
// ...생략...
body : Center(
  child : Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'you have pushed the button this many thimes',
      ),
      Text('$_counter'), // 4
      style : Theme.of((context).textTheme.display1
      ),
    ],
  ),
)

// 숫자가 표시되는 4 부분을 눈여겨 봐라. _counter는 정수형 변수이다.
// 이것을 Text 위젯에 표시하려면 문자열로 변경해야 한다. 변숫값을 문자열 형태로 변경하고자 할 때는 변수 앞에 $ 기호를 붙인다.
// 이 코드는 최초에 3  0으로 초기화했기에 0을 문자열로 표시합니다.
// 이후 사용자가 + 버튼을 누르면 다음과 같은 _incrementCouner 메서드가 호출된다

void _incrementCounter(){
  setState((){ // 5
    _counter++; // 6
  });
}

// 그러면 5 setState 메서드에 의해 6 _counter 변수가 1 증가한 후 build 메서드가 다시 호출되고
// 화면이 다시 그려져 숫자가 갱신된다.
