import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Kakao T'),
        backgroundColor: Colors.white,),
      body: Container(
        child: Center(child: Text('2번째 화면')),
      ),
    );
  }
}
