import 'package:flutter/material.dart';

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
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  itemCount: questions[questionNumber].answers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:const EdgeInsets.all(15),
                        margin:const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          questions[questionNumber].answers[index],
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: goNext,
                style: ElevatedButton.styleFrom(minimumSize: Size(300, 40)),
                child: const Text('next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
