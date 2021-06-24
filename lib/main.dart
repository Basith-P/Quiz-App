import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\s your favourite color?',
      'answers': ['Black', 'Blue', 'Green', 'Red']
    },
    {
      'questionText': 'What\s your favourite animal?',
      'answers': ['Lion', 'Tiger', 'Dog', 'Cat']
    },
    {
      'questionText': 'What\s your favourite fruit?',
      'answers': ['Apple', 'Orange', 'Banana', 'Kiwi']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('More is there');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Color(0xff000111),
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
