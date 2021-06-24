import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Color(0xff000111),
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
