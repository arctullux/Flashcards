/// A custom dart class file containing the Flashcard class. This is essential for the use
/// of the program, since it contains the materials to make flashcards.
///
/// ** Notes **
/// studyPriority is set to 0 at default.
///   0 is the lowest study priority and will show up at the bottom of a recommended
///   study list.
///   5 is the highest study priority, and will be at the top of a recommended study list.
/// studyPriority may be affected based on a voluntary correct/incorrect counter.
/// It shall not exceed 5.

import 'package:flutter/material.dart';
//
// class FlashcardData {
//   String name = "";
//   String question = "";
//   String answer = "";
//   int _flashcardID = 0;
//   int _studyPriority = 0;
//
//   set flashcardID(int value) {
//     if (value > 0) {
//       _flashcardID = value;
//     }
//   }
//
//   get flashcardID {
//     return _flashcardID;
//   }
//   set studyPriority(int value) {
//     if (value > 5) {
//       _studyPriority = 5;
//     } else if (value < 0) {
//       _studyPriority = 0;
//     } else {
//       _studyPriority = value;
//     }
//   }
//
//   int get studyPriority {
//     return _studyPriority;
//   }
//
//   FlashcardData({required this.name, required this.question, required this.answer, dynamic flashcardID});
// }


class FlashcardList {
  List<Flashcard> flashcards;
  String topic;

  FlashcardList({required this.flashcards, required this.topic});

  void addToList(Flashcard flashcard) {
    flashcards.add(flashcard);
  }
  void removeFromList(Flashcard flashcard) {
    flashcards.remove(flashcard);
  }
}
class Flashcard extends StatefulWidget  {
  Flashcard({super.key, required this.name, required this.question, required this.answer});

  final String name;
  final String question;
  final String answer;

  @override
  State<Flashcard> createState() => _FlashcardState();
}

class _FlashcardState extends State<Flashcard> {

  bool questionSideUp = true;
  int _flashcardID = 0;
  int _studyPriority = 0;

  set flashcardID(int value) {
    if (value > 0) {
      _flashcardID = value;
    }
  }

  get flashcardID {
    return _flashcardID;
  }
  set studyPriority(int value) {
    if (value > 5) {
      _studyPriority = 5;
    } else if (value < 0) {
      _studyPriority = 0;
    } else {
      _studyPriority = value;
    }
  }

  int get studyPriority {
    return _studyPriority;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 60),
      child: Container(
          height: 10.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xff415681),
          ), // BoxDecoration
          child: Center(
            child: questionSideUp? questionText() : answerText(),
          ), // Center
        ),
    ); // Container
  }

  Widget questionText() {
    if (widget.question != "") {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          widget.question,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ), // TextStyle
        ), // Text
      ); // Padding
    } else {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          "ERR !> Text Field Empty. Try adding text.",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30.0,
          ), // TextStyle
        ),
      ); // Text
    }
  }

  Widget answerText() {
    if (widget.answer != "") {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          widget.answer,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
        ), // TextStyle
      ), // Text
      ); // Padding
    } else {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          "ERR !> Text Field Empty. Try adding text.",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30.0
          ), // TextStyle
        ),
      ); // Text
    }
  }
}
