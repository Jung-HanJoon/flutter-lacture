import 'package:flutter/material.dart';
import 'package:flutter_app_1029/navigation/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String name='';
  @override
  void setState(fn) {

    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$name'),
          //최근 버전의 위젯
          ElevatedButton(
            child: Text('두번재화면으로가기'),
              onPressed: () {
                Future<String> future = Navigator.push(//화면 이동을 위해 필요함.
                  //futuer은 나중에 받은 값에 대한 변수 선언
                  context,//다트의 특정 기능 수행시 반드시 필요하며, 상위부터 받아와야함
                  MaterialPageRoute(builder: (context) => SecondPage('정한준 위에버튼 누름'), ),
                );
                //아래 코드는 실행 대기상태에 있다가 future가 값을 할당받으면 실행된다.
                try{
                  future.then((value){
                    setState(() {
                      if(value!=null)name=value;
                    });
                  });
                }catch(exeption){
                  print(exeption.toString());
                }
              }
          ),
          //기존에 사용하던 위젯
          RaisedButton(
            child: Text('두번째 페이지로 가기'),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage('정한준 아래버튼 누름')),
            );
          }),
        ],
      ),
    );
  }
}
