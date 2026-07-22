import 'package:flutter/material.dart';
// Custom colors are in 0xff format. e.g 0xff000000 (#000000)
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Color(0xff552bf2),
        body: Container(
          child: Center(child: Image(image: AssetImage('assets/images/quizful_logo.png'), height: 100)), // AssetImage
         ), // Container
      ), // Scaffold,
    ); // SafeArea
  }
}
