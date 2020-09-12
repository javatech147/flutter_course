import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      print(_questionIndex);
      // if (_questionIndex == 1) {
      //   _questionIndex = 0;
      // } else {
      //   _questionIndex = 1;
      // }
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What is your Favorite Color ?',
        'answers': ['Black', 'Red', 'Green', 'Blue']
      },
      {
        'questionText': 'What is your Favorite Animal ?',
        'answers': ['Rabbit', 'Snack', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who is your favorite Cricketer ?',
        'answers': ['Dhoni', 'Raina', 'Sachin', 'Sehwag']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // Extracting question list from Map
            Question(questions[_questionIndex]['questionText']),

            // Creating dynamic widgets for Answer that having RaisedButton
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
