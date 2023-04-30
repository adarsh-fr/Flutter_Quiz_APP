import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/question_summary/question_indentifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: (InputDecorator(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: isCorrectAnswer
                        ? const Color.fromARGB(244, 42, 196, 4)
                        : const Color.fromARGB(255, 244, 6, 6),
                    labelText: 'Your Answer',
                    labelStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.white,
                          width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                      gapPadding: 1.0,
                    ),
                  ),
                  child: Text(
                    itemData['user_answer'] as String,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 245, 245, 245),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: (InputDecorator(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(244, 42, 196, 4),
                    labelText: 'Correct Answer',
                    labelStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.white,
                          width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                      gapPadding: 1.0,
                    ),
                  ),
                  child: Text(
                    itemData['correct_answer'] as String,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        )
      ],
    );
  }
}
