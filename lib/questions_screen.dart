import 'package:flutter/material.dart';
import 'package:quiz_app_maxi/models/quiz_question.dart';

import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionNumber = 0;
  void goNext() {
    setState(() {
      questionNumber += 1;
      if (questionNumber > questions.length - 1) {
        questionNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.deepPurple.shade900,
              Colors.indigo.shade900,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[questionNumber].text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //* answers list
              ElevatedButton(
                onPressed: goNext,
                style: ElevatedButton.styleFrom(
                  minimumSize:const Size(300, 40),
                ),
                child: const Text('next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnswersButton extends StatelessWidget {
  const AnswersButton({
    super.key,
    required this.questionNumber,
    required this.AnswerText,
  });

  final int questionNumber;
  final String AnswerText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 30, 65),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          AnswerText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
