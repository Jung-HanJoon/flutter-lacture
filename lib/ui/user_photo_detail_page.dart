import 'package:flutter/material.dart';
import 'package:flutter_app_1029/model/user.dart';



class UserPhotoDetailPage extends StatelessWidget {

  User user;

  UserPhotoDetailPage(User user) {
    //생성자를 만들어서 값을 받아올 수 있게 함.
    this.user = user; //생성자 호출시 넣어준 매개변수를 실제 활용한 변수에 대입.
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Column(
        children: [
          Hero(
            tag: user,
              child: Image.network(user.imageUrl)),
        ],
      ),


    );
  }
}
