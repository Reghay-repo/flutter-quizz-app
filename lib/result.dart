import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // final String message;
  final int resultScore;
  final VoidCallback resetFunc;

  const Result({super.key, required this.resultScore, required this.resetFunc});

  String get resultString {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are so bad, your score is $resultScore';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty strange , your score is $resultScore';
    } else if (resultScore <= 16) {
      resultText = 'YOu are pretty likable, your score is $resultScore';
    } else {
      resultText = 'You are shinny! your score is $resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 250),
        child: Column(
          children: [
            Text(resultString,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: resetFunc, child: const Text('Restart Quizz')),
          ],
        ),
      ),
    );
  }
}
