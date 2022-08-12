// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answered;
  final int questionIndex;
  const Quiz(
      {required this.answered,
      required this.questions,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answered(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
