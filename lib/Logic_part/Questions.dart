class Question {
  String questionText;
  List<String> options;
  int correctOption;
  int points;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOption,
    required this.points,
  });

  List<Question> questions = [
  Question(
    questionText: "What will be the Nifty movement?",
    options: ["Up", "Down", "No Change", "Significant Change"],
    correctOption: 2,
    points: 200,
  ),
  Question(
    questionText: "Which is the largest planet?",
    options: ["Earth", "Jupiter", "Mars", "Venus"],
    correctOption: 1,
    points: 200,
  ),
  // Add more questions similarly
];
}