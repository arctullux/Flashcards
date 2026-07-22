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

class Flashcard {
  String name;
  String definition;
  String answer;
  int studyPriority = 0;
  static int flashcardID = 0;

  Flashcard({required this.name, required this.definition, required this.answer, studyPriority}) {
    ++flashcardID;
  }

}

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