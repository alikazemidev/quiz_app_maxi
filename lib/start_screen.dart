import 'package:flutter/material.dart';
import 'package:quiz_app_maxi/questions_screen.dart';
import 'package:quiz_app_maxi/quiz.dart';

class StartScreen extends StatelessWidget {
  final Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: Colors.white.withOpacity(0.5),
        ),
        const SizedBox(height: 20),
        const Text(
          'Quiz App',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
          ),
          onPressed: startQuiz,
          label: const Text(
            'START',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
