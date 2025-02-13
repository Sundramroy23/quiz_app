class QuizClass {
  late String question;
  late List<String> options;

  QuizClass(this.question, this.options);
  List<String> shuffledOptions() {
    final List<String> shuffledOptions = List.of(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
