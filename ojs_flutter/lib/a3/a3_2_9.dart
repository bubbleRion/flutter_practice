// FloatingActionButton 클래스

// Scaffold 클래스는 머티리얼 디자인에 자주 사용되는 FloatingActionButton 클래스를 정의하는 프로퍼티를 제공한다.
// 코드를 보자.
import 'package:flutter/material.dart';

floatingActionButton : FloatingActionButton(
  onPressed : _incrementCounter,
  tooltip : 'Increment',
  child : Icon(Icons.add),
),

// onPressd 프로퍼티는 버튼이 눌러지면 실행되는 부분이다.
// 여기에 동작시킬 코드를 함수 형태로 작성한다.
// 다트에서는 함수도 값으로 사용될 수 있기에 _incrementCounter 메서드의 이름을 직접 값으로 작성했다.

// 다트 문법에서 함수를 인수로 전달하는 방법은 몇 가지가 있는데 앞에서처럼 메서드명을 직접 지정하거나,
// 다음과 같이 람다식이나 익명 함수를 애용해 지정할 수 있다.

onPressed : () => _incrementCounter(),

onPressed : () {
  return _incrementCounter();
}

// 세 방법 모두 같은 결과를 낸다. 가장 쉽게 느껴지는 것을 선택하여 사용하면 된다.
// tooltip 프로퍼티에는 사용자가 FloatingActionButton 을 길게 터치할 때 표시할 글자를 지정한다.
// child 프로퍼티에는 아이콘 인스턴스를 정의하여 + 모양 버튼을 표현한다.
// 더하기 아이콘을 표현하는 FloatingActionButton

// 이것으로 카운터 앱 샘플 코드 분석을 마치겠다.
