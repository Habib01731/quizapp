// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'homescreen.dart';

class Resultscreen extends StatelessWidget {
  final int score;
  const Resultscreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Resulscreen')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 40,
            ),
            Text('Your score:$score'),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homescreen(),
                      ));
                }),
                child: Text('Go to home'))
          ],
        )),
      ),
    );
  }
}
