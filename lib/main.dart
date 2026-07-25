import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:flashcard_app/test.dart';
// import 'pages/loading.dart';
// import 'flashcard_class.dart';
void main() {
  runApp(const QuizfulMain());
  // Switch between Quizful and test apps here. Don't forget to hot restart!
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

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestHome(),
    );
  }
}


