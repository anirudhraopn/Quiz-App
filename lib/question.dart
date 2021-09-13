import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({Key? key}) : super(key: key);
  final String question;
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
