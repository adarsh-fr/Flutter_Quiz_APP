import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 81, 255),
            Color.fromARGB(255, 0, 195, 249),
            Color.fromARGB(255, 255, 255, 255)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 150),
          Center(
            child: Image.asset('assets/images/quiz_logo.png', width: 300),
          ),
          const SizedBox(height: 100),
          const Text('Learn Flutter the fun way!', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w600),),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: (){},
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
