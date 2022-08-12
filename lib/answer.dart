// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, avoid_print, must_be_immutable

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selector;
  final String answerText;

  const Answer(this.selector, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
        ),
        child: Text(answerText),
        onPressed: selector,
      ),
    );
  }
}
