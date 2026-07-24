import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'flashcard_class.dart';
void main() {
  runApp(const QuizfulMain());

}

class QuizfulMain extends StatelessWidget {
  const QuizfulMain({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizfulHome(),
      title: "Quizful",
    ); // MaterialApp
  }
} // !!Class QuizfulMain

