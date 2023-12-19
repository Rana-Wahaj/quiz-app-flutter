class ModelQuestions {
  final String quesText;
  final List<String> answers;
  ModelQuestions(this.quesText, this.answers);
  List<String> getShuffledAnswers() {
    var copy = answers;
    copy.shuffle();
    return copy;
  }
}
