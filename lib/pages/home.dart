import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flashcard_app/flashcard_class.dart';



class QuizfulHome extends StatefulWidget {
  const QuizfulHome({super.key});

  @override
  State<QuizfulHome> createState() => _QuizfulHomeState();
}

class _QuizfulHomeState extends State<QuizfulHome> {
  int correctCounterNum = 0;
  String correctCounter = "0";
  int incorrectCounterNum = 0;
  String incorrectCounter = "0";
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose;
  }

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
        setState(() {
          _pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
        });
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
    return Column(

      children: [
        counter(),
        Expanded(
          // TODO: Set up drag targets for flashcard counters
          child: Container(
            color: Colors.yellow,
            child: Row(
              children: [
                Expanded(
                  child: DragTarget(
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      ); // Container
                    } // builder
                  ), // DragTarget
                ), // Expanded
              ], // Children
            ), // Row


            // PageView(
            //   physics: NeverScrollableScrollPhysics(
            //   ),
            //   controller: _pageController,// ScrollPhysics
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.all(50.0),
            //       child: Container(
            //         color: Colors.black
            //       ), // Container
            //     ), // Padding
            //     Padding(
            //       padding: EdgeInsets.all(50.0),
            //       child: Container(
            //           color: Colors.black
            //       ), // Container
            //     ), // Padding
            //     Padding(
            //       padding: EdgeInsets.all(50.0),
            //       child: Container(
            //           color: Colors.black
            //       ), // Container
            //     ), // Padding
            //   ], // Children
            // ), // PageView
          ), // Container
        ), // Expanded
      ], // Children
    ); // Column
  }

  Widget counter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              correctCounter,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight(400),
              ), // TextStyle
            ),
          ), // Text
        ), // Container
        Container(
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              incorrectCounter,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight(400),
              ), // TextStyle
            ),
          ), // Text
        ), // Container
      ], // children/
    ); // Row
  }
}
