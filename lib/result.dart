import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore > 30) {
      resultText = 'You\'re awesome and innocent!';
    } else if (resultScore > 20) {
      resultText = 'You\'re pretty likable!';
    } else if (resultScore > 10) {
      resultText = 'You\'re ... strange?!';
    } else {
      resultText = 'You\'re so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultScore.toString(),
          style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
