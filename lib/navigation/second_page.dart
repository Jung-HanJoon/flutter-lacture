import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name; //받아올 값을 저장할 변수선언
  SecondPage(String name) {
    //생성자를 만들어서 값을 받아올 수 있게 함.
    this.name = name; //생성자 호출시 넣어준 매개변수를 실제 활용한 변수에 대입.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$name')),
      body: Container(

          child: Center(
            child: ElevatedButton(
              onPressed: () {
              Navigator.pop(context, '웰 컴백!');
              },
              child: Text('돌아가기',),
      ),
          )),
    );
  }
}
