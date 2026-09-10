// 5.2 다이얼로그
// 다이얼로그는 사용자의 확인을 요구하거나 메시지를 표시하는 용도로 자주 사용한다.

// 5.2.1 AlertDialog
// 머티리얼 디자인의 유저 확인용 다이얼로그.

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('다이얼로그 열기'),
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('제목'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('Alert Dialog이다.'),
                        Text('OK를 눌러 닫는다.'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

// AlertDialog 클래스는 title과 content, actions 영역을 정의해준다.
// title은 말 그대로 제목 영역이며, content는 내용영역이다.
// SingleChildScrollView와 ListBody클래스를 사용하여 ListView와 동일한 효과를 가진다.

// actions 프로퍼티에는 버튼들을 정의한다.
// 여기서는 TextButton 두 개를 정의했고
// 각 버튼을 클릭할 때 Navigator.of(context).pop()을 호출하여 다이얼로그를 닫는다.
