import 'dart:ffi';

import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';
class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final List<Map<String, Object>> questions;
  final int indexNumber;
  Quiz({required this.indexNumber , required this.questions , required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[indexNumber]["questionText"] as String),
        ...(questions[indexNumber]["answers"] as List<Map<String ,Object>>).map((answer){
          return Answer(() => answerQuestion(answer["score"] as int) , answer["text"] as String);
        }).toList()
      ],
    );
  }
}
