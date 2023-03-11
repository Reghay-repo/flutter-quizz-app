import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _finalScore = 0;
  final _questions = const [
    {
      'questionText': 'what is your favorite country to visit?',
      'answers': [
        {'text': 'japan', 'score': 9},
        {'text': 'spain', 'score': 5},
        {'text': 'North america', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your favorite city?',
      'answers': [
        {'text': 'tanger', 'score': 7},
        {'text': 'casablanca', 'score': 4},
        {'text': 'fes', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your favorite food?',
      'answers': [
        {'text': 'tagine', 'score': 7},
        {'text': 'salade', 'score': 4},
        {'text': 'tacos', 'score': 9},
      ],
    },
    {
      'questionText': 'what is your favorite sports?',
      'answers': [
        {'text': 'tennis', 'score': 3},
        {'text': 'basketball', 'score': 7},
        {'text': 'volleyball', 'score': 5},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _finalScore = _finalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
      print(
        'final score $_finalScore',
      );
    } else {
      print('we run out of questions');
      print(
        'final score $_finalScore',
      );
    }
  }

  void _resetQuizz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quizz App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(
                    resultScore: _finalScore,
                    resetFunc: _resetQuizz,
                  )));
  }
}
