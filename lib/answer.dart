import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 0,
        bottom: 0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[100]),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
