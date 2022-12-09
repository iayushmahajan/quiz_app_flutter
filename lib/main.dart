// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Who is Prime Minister of India?',
      'answers': [
        {'text': 'Mamta Banarjee', 'score': 0},
        {'text': 'Uddhav Thakare', 'score': 0},
        {'text': 'Narendra Modi', 'score': 1},
        {'text': 'Sonia Gandhi', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is India\'s national animal?',
      'answers': [
        {'text': 'Dog', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Tiger', 'score': 1},
        {'text': 'Cow', 'score': 0}
      ],
    },
    {
      'questionText': 'How many states are there in India?',
      'answers': [
        {'text': '34', 'score': 0},
        {'text': '28', 'score': 1},
        {'text': '17', 'score': 0},
        {'text': '23', 'score': 0}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answered(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GK QUIZ'),
          backgroundColor: const Color.fromARGB(255, 11, 43, 59),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answered: _answered,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _questions.length, _resetQuiz),
      ),
    );
  }
}
