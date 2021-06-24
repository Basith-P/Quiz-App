import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
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

    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('Youd did it!'),
              ),
      ),
    );
  }
}
