import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  num count = 0;
  double sizet = 50;
  Color colort = Colors.black;
  void counter() {
    setState(() {
      count++;
      if(sizet>80){
        sizet=50;
      }else{
        sizet=sizet+5;
      }
      switch(count%4){
        case 0:
          colort= Colors.black;
          break;
        case 1:
          colort= Colors.red;
          break;
        case 2:
          colort= Colors.blue;
          break;
        case 3:
          colort= Colors.purple;
          break;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('카운터')),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '카운터',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            '$count',
            style: TextStyle(fontSize: sizet, fontWeight: FontWeight.bold, color: colort),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        //icon:Icons.add,
        onPressed: () {
          print('click');
          counter();
          DiagnosticsNode.message('message').allowNameWrap;
        },
      ),
    );
  }
}
