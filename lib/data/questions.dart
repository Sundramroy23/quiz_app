import 'package:quiz_app/models/quiz_class.dart';

List<QuizClass> questions = [
  QuizClass(r"What programming language is used to develop Flutter apps?",
      ["Dart", "Java", "Python", "Swift"]),
  QuizClass(r"What is the widget tree in Flutter?", [
    "A hierarchical structure of widgets in an app",
    "A database storing all widget states",
    "A Flutter package for UI components",
    "A way to optimize Flutter app performance"
  ]),
  QuizClass(r"What is the purpose of the `pubspec.yaml` file in Flutter?", [
    "It manages app dependencies and metadata",
    "It defines app navigation",
    "It stores user preferences",
    "It handles Flutter animations"
  ]),
  QuizClass(r"Which widget is used to create a scrollable list in Flutter?",
      ["ListView", "Column", "Stack", "Container"]),
  QuizClass(r"What is the purpose of the `setState()` method in Flutter?", [
    "To update the UI when the state of a widget changes",
    "To create a new widget instance",
    "To define the app theme",
    "To add animations to the app"
  ]),
  QuizClass(
      r"Which Flutter widget is used to create a button with built-in styling?",
      ["ElevatedButton", "Text", "ListTile", "AppBar"]),
  QuizClass(r"How do you define a Stateless widget in Flutter?", [
    "By extending the `StatelessWidget` class",
    "By creating a class with a `build()` method only",
    "By using the `StatefulWidget` class",
    "By using `setState()` in the widget"
  ]),
  QuizClass(r"What does the `BuildContext` represent in Flutter?", [
    "It provides information about the widget tree location",
    "It manages app navigation",
    "It defines the main function of the app",
    "It handles asynchronous operations"
  ]),
  QuizClass(r"Which Flutter package is commonly used for state management?",
      ["Provider", "pandas", "NumPy", "Express.js"]),
  QuizClass(r"How do you add an external package to a Flutter project?", [
    "By adding the package to `pubspec.yaml` and running `flutter pub get`",
    "By manually downloading and adding the package file",
    "By writing the package name in the `main.dart` file",
    "By importing it directly without installation"
  ]),
];
