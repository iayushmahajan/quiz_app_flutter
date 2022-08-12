// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback restQuiz;
  const Result(this.score, this.totalQuestions, this.restQuiz);
  String get resultDeclaration {
    String resultText;
    if (score == 0) {
      resultText = 'You need to learn more!\nSee you again!';
    } else if (score < 3 && score > 0) {
      resultText = 'Good Score,\nkeep it up!';
    } else {
      resultText = 'Great work,\nyou did it!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 0, 94, 255)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$score' '/' '$totalQuestions',
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Text(
            resultDeclaration,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restQuiz,
            style: TextButton.styleFrom(primary: Colors.blue),
            child: const Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 22),
            ),
          )
        ],
      ),
    );
  }
}
