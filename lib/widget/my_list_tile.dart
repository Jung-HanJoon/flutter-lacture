import 'package:flutter/material.dart';
import 'package:flutter_app_1029/model/user.dart';

class MyListTile extends StatelessWidget {
  final User user;

  MyListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(user);
  }

  Widget _buildItem(User user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Image.network(
              user.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Text(user.name),
                Text('${user.age}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
