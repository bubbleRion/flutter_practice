// 5.2.3 TimePicker
// 시간을 선택할 때 사용하는 위젯

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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Future<TimeOfDay?> selectedTime = showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.dark(),
                    child: child!,
                  );
                },
              );

              selectedTime.then((dateTime) {
                if (dateTime != null) {
                  setState(() {
                    _selectedTime = dateTime;
                  });
                }
              });
            },
            child: Text('Date Picker'),
          ),
          Text('$_selectedTime'),
        ],
      ),
    );
  }
}

// initialTIme 프로퍼티에 초킷값을 지정한다. TimeOfDay.now() 함수를 사용하면 현재 시간을 설정하게 된다.
// context가 필요하며 Future 타입으로 TimeOfDay 타입의 값을 반환한다.
// TimeOfDay 클래스에는 시간(hour) 과 분(minute) 정보가 들어가 있다.