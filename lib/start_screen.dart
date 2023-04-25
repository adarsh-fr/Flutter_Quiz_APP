import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 150),
          Center(
            child: Image.asset('assets/images/quiz_logo.png', width: 300),
          ),
          const SizedBox(height: 90),
          const Text('Learn Flutter the fun way!', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w600),),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed:startQuiz,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
