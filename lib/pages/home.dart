import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flashcard_app/flashcard_class.dart';



class QuizfulHome extends StatefulWidget {
  const QuizfulHome({super.key});

  @override
  State<QuizfulHome> createState() => _QuizfulHomeState();
}

class _QuizfulHomeState extends State<QuizfulHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ApplicationLayout()
    ); // SafeArea
  }
  Widget ApplicationLayout() {
    return Scaffold(
      appBar: appBar(),
      body: homePage()
    );
  } // !Method ApplicationLayout

  AppBar appBar() {
    return AppBar(
      title: Text(
        "Quizful",
        style: TextStyle(
          fontWeight: FontWeight(500),
          color: Colors.white,
        ), // TextStyle
      ), // Text
      centerTitle: true,
      leading: ResetButton(),
      backgroundColor: Color(0xff303d56),
    ); // AppBar
  } // !Method AppBar
  Widget ResetButton() {
    return GestureDetector(
      onTap: () {
        print("Reset Flashcards.");
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          color: Color(0xff386585),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: SvgPicture.asset("assets/icons/material-reset_arrow.svg"),
          ), // Padding
        ), // Container
      ), // Padding
    ); // GestureDetector
  }

  Widget homePage() {
    return Container(
      color: Color(0xff303d56),
      child: PageView(
        children: [
          Flashcard(
            name: "Test",
            question: "What is REST?",
            answer: "A standardized software architecture style and specific API that is widely used across the industry."
          ), // Flashcard
        ], // Children
      ), // Pageview
    ); // Container
  }

}
