import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(
    this.questionText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 100, bottom: 70),
      child: Text(
        questionText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
