import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final dynamic answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
          padding: EdgeInsets.all(20),
          primary: Colors.amber,
          shape: StadiumBorder(),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
