import 'package:flutter/material.dart';
import 'package:flutter_app_1029/ui/first_page.dart';
import 'package:flutter_app_1029/ui/second_page.dart';
import 'package:flutter_app_1029/ui/third_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index=0;

  List<Widget> _viewpage=[FirstPage(),SecondPage(),ThirdPage()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: _viewpage[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.design_services), label: 'service'),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'info'),
        ],
        currentIndex:  _index,
        onTap: (int index){
          setState(() {
            this._index=index;
          });
        },
      ),
    );
  }
}
