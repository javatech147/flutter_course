import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './questions.dart';

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
      if(_questionIndex == 1){
        _questionIndex = 0;
      }else {
        _questionIndex = 1;
      }
      //_questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your Favorite Color ?',
      'What is your favorite Animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Questions(questions[_questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Answer 2 Chosen !!');
                }),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Answer 3 Chosen!!')),
          ],
        ),
      ),
    );
  }
}
