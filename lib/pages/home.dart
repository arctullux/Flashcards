import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



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
          fontWeight: FontWeight(500)
        ), // TextStyle
      ), // Text
      centerTitle: true,
      leading: ResetButton(),
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
          color: Color(0xffe7e0ff),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: SvgPicture.asset("assets/icons/material-reset_arrow.svg"),
          ), // Padding
        ), // Container
      ), // Padding
    ); // GestureDetector
  }
  Widget homePage() {
    return Placeholder();
  }

}
