// 4.5 화면 표시용 위젯
// 버튼과 더불어 화면 구성시 가장 자주 사용되는 위젯인 텍스트, 이미지, 아이콘, 프로그레스바

// 4.5.1 Text
// 글자를 표시하는 위젯

// Text 위젯은 기본적으로 첫번째 인수에 문자열을 지정하여 Text('글자') 형태로 사용하는 데
// style 프로퍼티에 TestStyle 클래스의 인스턴스를 지정하여 다양한 글자를 표현할 수 있다.
// TextStyle 클래스는 다음 예제와 같이 글자 크기, 색상, 폰트 스타일 등을 쉽게 설정할 수 있다.

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
    return Text(
      'Hello World',
      style : TextStyle(
        fontSize: 40.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        letterSpacing: 4.0,
      ),
    );
  }
}

// 참고로 Text 클래스의 첫 번쨰 인수는 필수 프로퍼티고 이름 없는 인수이다.
// style뿐만 아니라 모든 이름 있는 인수는 옵션 성격이므로 필요한 것을 선택적으로 사용가능.


// 4.5.2 Image
// 이미지를 표시하는 위젯

// 플러터에서는 네트워크에 있는 이미지를 간단히 표시할 수 있다.
// network() 메서드에 이미지 파일의 URL을 입력하기만 하면 된다.
void main2(){
  Image.network('http://bit.ly/...');
  Image.asset('assets/sample.jpg');
}
// 물론 asset() 메서드로 이미지 파일을 직접 표시할 수 있다.

// 4.5.3 Icon
// 메뉴나 리스트, 버튼과의 조합으로 사용한다.

void main3(){
  Icon(
    Icons.home,
    color: Colors.red,
    size : 60.0, // 기본값 24.0
  );
}

// 4.5.4 Progress
// 로딩 중이거나 오래 걸리는 작업을 할 때 사용자에게 진행 중 임을 보여주는 용도로 사용하는 위젯.
// 기본 두 종류 제공

void main4(){
  CircularProgressIndicator(); // 1 둥근거 겹쳐서 표시하므로 Stack 위젯으로 겹쳐서 사용
  LinearProgressIndicator(); // 2 선 형태의 프로그레스바
}

// 4.5.5 CircleAvatar
// 프로필 화면 등에 많이 사용되는 원형 위젯
// child 프로퍼티에 정의한 위젯을 원형으로 만들어준다.

void main5(){
  CircleAvatar(
    child : Icon(Icons.person),
  );
}