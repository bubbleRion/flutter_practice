// 5.1.4 DropDownButton
// 여러 아이템 중 하나를 고를 수 있는 콤보박스 형태의 위젯이다.

// value 프로퍼티에 표시할 값을 지정한다.
// items 프로퍼티에는 표시할 항목을 DropdownMeny Item 클래스의 인스턴스들을 담은 리스트로 지정해야 한다.
// 상태를 가지므로 StatefulWidget으로 작성한다.

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
  final _valueList = ['첫 번째', '두 번째', '세 번째'];
  var _selectedValue = '첫 번째';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: DropdownButton(
        value : _selectedValue,
        items: _valueList.map(
          (value){
            return DropdownMenuItem(
              value : value,
              child: Text(value)
              );
          },
        ).toList(),
        onChanged: (value){
          setState((){
            _selectedValue = value;
          });
        },
      ),
    );
  }
}