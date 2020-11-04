import 'package:flutter/material.dart';
import 'package:flutter_app_1029/model/user.dart';



class UserDetailPage extends StatelessWidget {

  final User user;


  UserDetailPage.name(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Column(
        children: [
          Image.network(user.imageUrl),

        ],
      ),


    );
  }
}
