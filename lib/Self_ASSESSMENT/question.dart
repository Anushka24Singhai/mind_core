import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(212, 3, 7, 255),
        ),
        textAlign: TextAlign.left,
      ), //Text
    ); //Container
  }
}
