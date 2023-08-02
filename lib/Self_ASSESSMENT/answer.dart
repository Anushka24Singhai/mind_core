import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color.fromARGB(246, 255, 96, 131),
        textColor: Color.fromARGB(255, 255, 255, 255),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18),
        ),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
