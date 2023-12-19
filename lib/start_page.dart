import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final void Function() startQuiz;
  const StartPage(this.startQuiz, {super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 254, 253, 252),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(149, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(149, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(149, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
