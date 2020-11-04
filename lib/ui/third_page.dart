import 'package:flutter/material.dart';
import 'package:flutter_app_1029/model/user.dart';
import 'package:flutter_app_1029/ui/user_detail_page.dart';
import 'package:flutter_app_1029/ui/user_photo_detail_page.dart';
import 'package:flutter_app_1029/widget/kakao_list_tile.dart';


class ThirdPage extends StatelessWidget {
  final List<User> _items = [
    User("사나",
        age: 30,
        imageUrl:
        'https://img.huffingtonpost.com/asset/5ceb2f97240000530085474d.jpeg?cache=cjHGUeLFMo&ops=crop_0_94_1001_722,scalefit_630_noupscale'),
    User("슬기",
        age: 20,
        imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Kang_Seul-gi_at_Coca-Cola_Event_on_January_18%2C_2020_03.jpg/250px-Kang_Seul-gi_at_Coca-Cola_Event_on_January_18%2C_2020_03.jpg'),
    User("웬디",
        age: 50,
        imageUrl:
        'https://img.khan.co.kr/news/2019/12/25/l_2019122501003124800244001.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('내 정보'),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
          TextButton(child: Text('button'), onPressed: () {}),
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return ListView(
        children: _items.map((user) {
          return InkWell(
            child: KakaoListTile(user),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserPhotoDetailPage(user)),
              );
            },
          );
        }).toList());
  }
}
