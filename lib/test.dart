import 'package:flutter/material.dart';


class TestHome extends StatefulWidget {
  const TestHome({super.key});

  @override
  State<TestHome> createState() => _TestHomeState();
}

class _TestHomeState extends State<TestHome> {
  int correctCounterNum = 0;
  String correctCounter = "0";
  int incorrectCounterNum = 0;
  String incorrectCounter = "0";
  Color question = Colors.blue;
  Color answer = Colors.grey;
  bool isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("For Testing Only",
            style: TextStyle(
              color: Colors.yellowAccent,
              fontWeight: FontWeight(600),
            ), // TextStyle
        ), // Text
        centerTitle: true,
        leading: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                incorrectCounter,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ), // TextStyle
              ), // Text
            ), // Padding
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                correctCounter,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ), // TextStyle
              ), // Text
            ), // Padding
          ], // Children
        ), // Row
      ), // AppBar
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DragTarget<int>(
              onAcceptWithDetails: (details) {
                final data = details.data;
                incorrectCounterNum += data;
                setState(() {
                  incorrectCounter = incorrectCounterNum.toString();
                });
                print("You got $incorrectCounter incorrect!");
              }, // DragTarget
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ); // Container
              } // WidgetBuilder
            ), // DragTarget<int>
          ), // Padding
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
               onTap: () {
                 setState(() {
                   if (isFlipped == false) {
                     isFlipped = true;
                   } else {
                     isFlipped = false;
                   }
                 });
               },
              child: Draggable<int>(
                axis: Axis.horizontal,
                data: 1,
                feedback: Container(
                    color: isFlipped? question : answer,
                    height: 100,
                    width: 100,
                    child: Icon(Icons.directions_run)
                ), // Container (Motion)
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ), // Container (Idle)
                childWhenDragging: Container(
                  color: Colors.orangeAccent,
                  height: 100,
                  width: 100,
                ), // Container
              ), // Draggable
            ), // GestureDetector
          ), // Padding
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DragTarget<int>(
              onAcceptWithDetails: (details) {
                final data = details.data;
                correctCounterNum += data;
                setState(() {
                  correctCounter = correctCounterNum.toString();
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ); // Container
              } // WidgetBuilder
            ), // DragTarget<int>
          ), // Padding
        ], // Children
      ), // Row
    ); // Scaffold
  }
}
