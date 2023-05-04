class QuizQuestion {
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    var shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

  const QuizQuestion(this.text, this.answers);
}
