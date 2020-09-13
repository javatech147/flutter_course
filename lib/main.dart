import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (hasMoreQuestions()) {
      print('We have more Questions');
    }
  }

  bool hasMoreQuestions() {
    return _questionIndex < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: hasMoreQuestions() // Ternary operator
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result()), );
  }
}
