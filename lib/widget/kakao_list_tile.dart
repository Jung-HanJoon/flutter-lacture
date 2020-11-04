import 'package:flutter/material.dart';
import 'package:flutter_app_1029/counter.dart';
import 'package:flutter_app_1029/model/user.dart';

class KakaoListTile extends StatelessWidget {
  final User user;

  KakaoListTile(this.user);

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
            Row(
              children: [
                Hero(
                  tag: user,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      user.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(user.name, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('${user.age}'),
                      ],
                    ),
                  ),
                ),
                Text('오후 8시'),
              ],

            ),

          ],
        ),
      ),
    );
  }
}