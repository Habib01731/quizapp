// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import

import 'dart:js_interop';

import 'package:class_6/allQuizscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Quizscreen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Quiz App',
              style: TextStyle(fontSize: 70, color: Colors.brown),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Quizscreen())));
                }),
                child: Text('Start Quiz'),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  addDataToDB();
                },
                child: Text('data base'))
          ],
        ),
      ),
    );
  }
}

Future<void> addDataToDB() async {
  var collection = await FirebaseFirestore.instance.collection('allquiz');
  Map<String, dynamic> quizMap = {
    'question': 'what is the capital of bangladesh',
    'answerList': [
      {'Answer': 'khulna', 'isCorroct': 'false'},
      {'Answer': 'dhaka', 'isCorroct': 'true'},
      {'Answer': 'khitati', 'isCorroct': 'false'},
      {'Answer': 'khulna', 'isCorroct': 'false'},
    ]
  };
}
