import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  //Creating getter
  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = "You are awesome and innocent!!";
    } else if (resultScore <= 16) {
      resultText = "You are likeable !!";
    } else if (resultScore <= 20) {
      resultText = "You are Strange ..";
    } else {
      resultText = "You are so bad.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
