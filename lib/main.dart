import 'package:flutter/material.dart';
import 'package:flutter_app_1029/counter.dart';
import 'package:flutter_app_1029/navigation/first_page.dart';
import 'package:flutter_app_1029/ui/main_page.dart';

import 'list.dart';

class Humans{

}

class Man extends Humans{

}

void main() {
  //메인 함수 : 앱 시작지점
  runApp(MyApp()); //컨트롤+슬래시(/) 하면 한줄주석
  // int a = 0;
  // double b=10.0;
  //
  // Humans h=Humans();
  // Man m= Man();
  // h=m;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //뷰를 그림
    return MaterialApp(
      //안드로이드의 메터리얼 스타일을 사용
        title: 'Flutter Demo',
        theme: ThemeData(
          //앱 기본 태마
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:MainPage(),
        //FirstPage(),
        //List_exam(),
        //Counter(),
      //MyHomePage(),
    );
  }
}


Widget titleSection = Container(
  //위젯을 따로 선언하면서 감싸줌
  padding: const EdgeInsets.all(32), //내부여백 : 끝부분.모두(32) 만큼 띄움
  child: Row(
    //가로 레이아웃
    children: [
      Expanded(
        //빈공간을 채움
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //컬럼의 반대방향기준 시작부분에 정렬(왼쪽정렬)
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              //내부여백 끝부분.오직(아래만 8)만큼 띄움
              child: Text(
                //텍스트 위젯
                'Oeschinen Lake Campground', //내용
                style: TextStyle(
                  //텍스트의 스타일
                  fontWeight: FontWeight.bold, //두껍게
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland', //내용
              style: TextStyle(
                color: Colors.grey[500], //컬러 색[회색]
              ),
            ),
          ],
        ),
      ),
      Icon(
        //아이콘 위젯
        Icons.star, //기본 제공되는 아이콘중 별모양
        color: Colors.red[500], //아이콘 색상 빨간색
      ),
      Text('41'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  //컬럼을 반환하며 매개변수로 컬러, 아이콘, 텍스트를 받는 메서드 선언
  return Column(
    //반환할 컬럼
    mainAxisSize: MainAxisSize.min, //컬럼정방향(수직) 사이즈 최소화
    mainAxisAlignment: MainAxisAlignment.center, //컬럼정방향(수직) 중앙 정렬
    children: [
      Icon(icon, color: color), //아이콘위젯은 매개변수 icon을 쓰며 컬러는 매개변수 color 사용
      Container(
        margin: const EdgeInsets.only(top: 8), //외부여백 끝부분.오직(상단 8)만큼 띄움
        child: Text(
          label, //텍스트 내용=매개변수label
          style: TextStyle(
            fontSize: 12, //글자크기
            fontWeight: FontWeight.w400, //장평? 설정인듯
            color: color, //글자색=매개변수color
          ),
        ),
      ),
    ],
  );
}

Color color = Colors.blue; //컬러 변수(인스턴스) 선언 및 파란색으로 초기화

Widget buttonSection = Container(
  //아이콘텍스트 영역 위젯
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //로우 정방향(수평) 양쪽 정렬-자식위젯들 간의 간격 끝에 맞게 분배
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      //이전에 정의한 메서드 호출 인자는(블루,아이콘, call 텍스트)
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      //''
      _buildButtonColumn(color, Icons.share, 'SHARE'),
      //''
    ],
  ),
);

Widget textSection = Container(
  //본문 내용 영역 위젯
  padding: const EdgeInsets.all(32), //32씩 모두 안쪽 여백
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese ' //한줄로 쓰거나
        'Alps. Situated 1,578 meters above sea level, it is one of the ' //줄바꿈시 ''를 써줘야함.
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true, //줄바꿈 규칙(false일 경우 한줄로 끝도없이 이어짐)
  ),
);

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded  (
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Kandersteg, Switzerland', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                Text('41')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Text('CALL',style: TextStyle(color: Colors.blue),)
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Colors.blue,
                  ),
                  Text('ROUTE',style: TextStyle(color: Colors.blue),)
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text('SHARE',style: TextStyle(color: Colors.blue),)
                ],
              ),
            ],
          )
        ],
      ),

    );
  }
}
*/
/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


 */
/*
Scaffold(
//메터리얼 디자인의 시작부분
body: ListView(
//수직 리스트
children: [
//컬럼에 속하는 위젯들
Image.asset(
//이미지 위젯
'images/lake.jpg', //asset에 추가한 이미지를 사용
width: 600, //가로길이 설정
height: 240, //세로길이 설정
fit: BoxFit.cover, //이미지의 맞춤 설정(잘림 등)
),
titleSection, // 따로 분리한 Row나 컬럼들, 타이틀과 별표 등
buttonSection, // 로우(컬럼(아이콘,텍스트),'','')
textSection, // 텍스트 섹션, 텍스트 내용과 줄바꿈 등 선언
],
),
)
*/
