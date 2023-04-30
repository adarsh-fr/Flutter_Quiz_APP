import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: isCorrectAnswer
        //     ? const Color.fromARGB(244, 42, 196, 4)
        //     : const Color.fromARGB(255, 244, 6, 6),
            borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        '$questionNumber.',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20
        ),
      ),
    );
  }
}
