import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore > 21) {
      resultText = 'You\'re awesome and innocent!';
    } else if (resultScore > 14) {
      resultText = 'You\'re pretty likable!';
    } else if (resultScore > 7) {
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
          'Your Score',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          resultScore.toString() + "/30",
          style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black,
            padding: EdgeInsets.all(20),
            primary: Colors.amber,
            shape: StadiumBorder(),
          ),
          child: Text('Reset'),
          onPressed: resetHandler,
        ),
      ],
    );
  }
}
