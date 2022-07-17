import 'package:flutter/material.dart';
import './question.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  String get yourResult {
    String resultText;
    if(resultScore<=8){
      resultText = "Score is <= 8";
    }
    else if(resultScore<=12){
      resultText = "Score is <= 12";
    }
    else if (resultScore<=16){
      resultText = "Score is <= 16";
    }
    else{
      resultText = "Score is Greater than 16, Good Job!";
    }
    return resultText;
  }
  const Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Question(yourResult),
        ),
        TextButton(onPressed: resetHandler,
          style: TextButton.styleFrom(primary: Colors.deepPurple, backgroundColor: Colors.deepOrangeAccent), child: Question("Reset Quiz")
        )
      ],
    );
  }
}
