import "package:flutter/material.dart";
import './question.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  var _indexNumber =0;
  void _answerQuestion(){
    setState((){
      _indexNumber++;
      print(_indexNumber);
    });
  }
  @override
  Widget build(BuildContext context){
    var questions = ["What's your Name?" , "Your Address?" , "Your Name Again!"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title Of The App!"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_indexNumber]),
            RaisedButton(onPressed: _answerQuestion,
            child: const Text("Answer 1"),),
            RaisedButton(onPressed: _answerQuestion,
              child: const Text("Answer 2"),),
            RaisedButton(onPressed: _answerQuestion,
              child: const Text("Answer 2"),),
          ],
        ),
      ),
    );
  }
}