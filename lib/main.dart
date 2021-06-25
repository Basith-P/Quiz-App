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
  final _questions = const [
    {
      'questionText': 'What\s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 1},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 10},
      ]
    },
    {
      'questionText': 'What\s your favourite animal?',
      'answer': [
        {'text': 'Lion', 'score': 1},
        {'text': 'Fox', 'score': 3},
        {'text': 'Dog', 'score': 6},
        {'text': 'Cat', 'score': 10},
      ]
    },
    {
      'questionText': 'What\s your favourite fruit?',
      'answer': [
        {'text': 'Grapes', 'score': 1},
        {'text': 'Orange', 'score': 3},
        {'text': 'Banana', 'score': 6},
        {'text': 'Apple', 'score': 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totoalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totoalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totoalScore += score;
    });

    if (_questionIndex < _questions.length) {
      print('More is there');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
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
              : Result(_totoalScore, _resetQuiz),
        ),
      ),
    );
  }
}
