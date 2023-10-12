// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Resultscreen.dart';
import 'allQuizscreen.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({super.key});

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  int quizIndex = 0;
  int? selectedAnswerIndex;
  Color SelectedColor = Colors.yellow;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${quizIndex + 1}/${allQuiz.length}'),
            Text(
              allQuiz[quizIndex].question,
              textScaleFactor: 1.2,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: allQuiz[quizIndex].answerList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        selectedAnswerIndex = index;
                      },
                      child: Card(
                        color: index == selectedAnswerIndex
                            ? SelectedColor
                            : Colors.blueAccent.shade700,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Center(
                              child: Text(
                                  allQuiz[quizIndex].answerList[index].answer)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () async {
                  if (allQuiz[quizIndex]
                      .answerList[selectedAnswerIndex!]
                      .iscorrect) {
                    score += 10;
                    setState(() {
                      SelectedColor = Colors.green;
                    });
                  } else {
                    setState(() {
                      SelectedColor = Colors.red;
                    });
                  }
                  await Future.delayed(Duration(seconds: 2));
                  if (quizIndex < allQuiz.length - 1) {
                    setState(() {
                      quizIndex++;
                      selectedAnswerIndex = null;
                    });
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Resultscreen(score: score),
                        ));
                  }
                },
                child: Text('Next')),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
