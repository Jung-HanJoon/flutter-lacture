import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class List_exam extends StatefulWidget {
  @override
  _List_examState createState() => _List_examState();
}

// ignore: camel_case_types
class _List_examState extends State<List_exam> {
  final _suggestions = <WordPair>[];//단어쌍을 담을 리스트 변수선언
  final _biggerFont = TextStyle(fontSize: 18.0);//텍스트 스타일 변수 선언

  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return Scaffold(body: _buildSuggestions(),);
  }

  change(BuildContext context){

  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); //i가 홀수일때만 실행함. 행을 나누는 위젯임. 구분선

          final index = i ~/ 2; //2로 나눈 몫만 반환함. 나머지는 버림
          if (index >= _suggestions.length) {//단어쌍 리스트의 개수보다 인덱스가 많을경우
            _suggestions.addAll(generateWordPairs().take(10)); //리스트에 단어쌍 5개 생성해서 삽입
          }
          return _buildRow(context, _suggestions[index]);
        });
  }
  Widget _buildRow(context, WordPair pair) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              pair.asPascalCase,
              style: _biggerFont,
            ),
          ),
          IconButton(icon: Icon(Icons.star, color:Colors.amber),
          onPressed: change(context))
        ],
      ),
    );
  }
}