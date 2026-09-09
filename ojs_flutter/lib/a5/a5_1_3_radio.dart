// 5.1.3 Radio와 RadioListTile

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
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender { MAN , WOMEN }
Gender _gender = Gender.MAN;

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text('Radio / RadioListTile'),
      ),
      body : Padding(
        padding : const EdgeInsets.all(0.0),
        child : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title : Text('남자'),
                leading: Radio(
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value
                    });
                  },
                ),
              ),
              ListTile(
                title : Text('여자'),
                leading: Radio(
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value
                    });
                  },
                ),
              )
              SizedBox(
                height: 40,
              ),
              RadioListTile(
                title : Text('남자'),
                value: Gender.MAN,
                groupValue: _gender,
                onChanged: (value){
                  setState(() {
                    _gender = value
                  });
                 },
              ),
              RadioListTile(
                title : Text('여자'),
                value: Gender.WOMEN,
                groupValue: _gender,
                onChanged: (value){
                  setState(() {
                    _gender = value
                  });
                 },
              ),
            ],
          )
        )
      )
    );
  } 
}