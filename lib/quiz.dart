import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function handler;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.handler,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              () {
                handler(
                  answer['score'] as int,
                );
              },
              answer['ansText'] as String,
            );
          },
        ).toList()
      ],
    );
  }
}
