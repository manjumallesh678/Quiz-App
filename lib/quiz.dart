import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './main.dart';

class Quiz extends StatelessWidget {
  final question = MyAppState.question;
  final VoidCallback answerQuestion;
  int questionId;

  Quiz(this.answerQuestion, this.questionId);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          (question[questionId]['questionText'] as String).toString(),
        ),
        ...(question[questionId]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
