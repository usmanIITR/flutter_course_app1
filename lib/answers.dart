import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback callbackFunction;
  Answer(this.callbackFunction);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrangeAccent,
        onPressed: callbackFunction,
        child: const Text("Answer 1"),),
    );
  }
}
