import 'package:flutter/material.dart';
class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double height = 100;
  double width =100;

  void _changebox(){
    setState(() {
      if(height<300||width<300){
        height=height+100;
        width+=width+100;
      }else{
        height = 100;
        width =100;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: _changebox, child: Text('변환'
            )),
            AnimatedContainer(
              curve: Curves.easeInOut,
              duration: Duration(seconds: 1),
              width: width,
              height: height,
              color: Colors.yellow,
            )
          ],
        ),
      ),

    );
  }
}
