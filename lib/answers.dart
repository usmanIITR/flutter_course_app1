import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback callbackFunction;
  final String answerText;
  Answer(this.callbackFunction, this.answerText);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrangeAccent,
        textColor: Colors.cyanAccent,
        onPressed: callbackFunction,
        child: Text(answerText),
      ),
    );
  }
}
