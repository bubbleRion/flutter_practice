// 상태변경
// state 클래스에는 주로 상태를 저장할 변수들과 그 변수를 조작할 메서드를 작성한다.
// 카운터 앱의 state 클래스는 다음과 같다.

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;
  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
}
// 정수형 _counter는 0으로 초기화 되어 있다. _incrementCounter 메서드는 setState 메서드를 실행한다.
// 여기서 setState 메서드가 중요하다. 이 메서드의 인수로 입력 인수가 없고 반환값이 없는 익명 함수를 작성했다.
// 익명 함수의 내용은 _counter를 1만큼 증가시키는 거다.

// setState 메서드는 전달된 익명 함수를 실행한 후 화면을 다시 그리게 하는 역할을 한다.
// 화면은 build 메서드가 실행되면서 그려진다고 배웠다.
// 즉, setState 메서드는 build 메서드가 다시 실행되게 하는 역할을 하는 거다.
// setState 메서드는 State 클래스가 제공하는 메서드이다.
/// setState 자체가 기본적으로 build 를 실행하게 하는 것인가?

// 정리하면 MyHomePage 클래스는 statefulWidget의 서브클래스이며 상태를 가질수 있다.
// 그리고 그 상태는 State 클래스의 서브클래스로 정의한다.
// 여기서 변경 가능한 상태는 _counter 변수이다.
// 이 값이 변경될 때마다 화면을 다시 그리면 동적인 화면을 가진 앱이 되는거다.
