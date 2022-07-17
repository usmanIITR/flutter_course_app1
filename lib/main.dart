import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  final _questions = const [{
    "questionText" : "What's your favorite Animal?" ,
    "answers" : [{"text":"Zebra" , "score":10} , {"text":"Elephant" , "score":8} , {"text":"Tiger" , "score":5} , {"text":"Lion" , "score":3}]
  },
    {
      "questionText" : "What's your favorite fruit?" ,
      "answers" : [{"text":"Mango" , "score":10} , {"text":"Banana" , "score":8} , {"text":"Papaya" , "score":5} , {"text":"Kiwi" , "score":3}]
    },
    {
      "questionText" : "Who's your favorite Actor?" ,
      "answers" : [{"text":"Selmon Bhoi" , "score":10} , {"text":"Akshay Kumar" , "score":8} , {"text":"SRK" , "score":5} , {"text":"Aamir Khan" , "score":3}]
    },
  ];
  var _indexNumber =0;
  var _totalScore =0;
  void _resetQuiz(){
    setState((){
      _totalScore=0;
      _indexNumber=0;
    });
  }

  void _answerQuestion(int score){
    _totalScore += score;
    setState((){
      _indexNumber++;
      print(_indexNumber);
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title Of The App!"),
        ),
        body: _indexNumber < _questions.length?
            Quiz(answerQuestion: _answerQuestion, indexNumber: _indexNumber,questions: _questions):
            Result(_totalScore,_resetQuiz),
      ),
    );
  }
}