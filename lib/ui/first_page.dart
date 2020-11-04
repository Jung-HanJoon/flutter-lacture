import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kakao T'),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            child: Center(child: Text('1번째 화면')),
          ),
          _buildMenuSection(),
          _buildAdSection(),
          _buildnoticeSection(),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String title) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(title),
      ],
    );
  }

  Widget _buildMenuSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '택시'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '택시'),
            _buildItem(Icons.local_taxi, '택시'),
            Opacity(
                opacity: 0.0, child: _buildItem(Icons.local_car_wash, '택시'),),
          ],
        ),
      ],
    );
  }

  Widget _buildAdSection() {
    //List<int> list = [1, 2, 3, 4, 5];
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(milliseconds: 2000),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: [
        Container(color: Colors.red,
        child: Image(image: AssetImage('images/lake.jpg'),),),
        Container(color: Colors.blue,
          child: Image(image: AssetImage('images/lake.jpg'),),),
        Container(color: Colors.green,
          child: Image(image: AssetImage('images/lake.jpg'),),),
      ],
    ));
  }

  Widget _buildnoticeSection() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.info),
          title: Text('[이벤트] 추석 어쩌구저쩌구 ~~ !@#!@'),),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('[이벤트] 추석 어쩌구저쩌구 ~~ !@#!@'),),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('[이벤트] 추석 어쩌구저쩌구 ~~ !@#!@'),),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('[이벤트] 추석 어쩌구저쩌구 ~~ !@#!@'),),

      ],
    );
  }
}
