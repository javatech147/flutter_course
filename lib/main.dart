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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 4},
        {'text': 'Blue', 'score': 2}
      ]
    },
    {
      'questionText': 'What is your Favorite Animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snack', 'score': 6},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Lion', 'score': 5}
      ]
    },
    {
      'questionText': 'Who is your favorite Cricketer ?',
      'answers': [
        {'text': 'Dhoni', 'score': 10},
        {'text': 'Raina', 'score': 5},
        {'text': 'Sachin', 'score': 3},
        {'text': 'Sehwag', 'score': 8}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
      debugShowCheckedModeBanner: false,
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
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
