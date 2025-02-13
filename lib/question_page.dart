import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/load_page.dart';
import 'package:quiz_app/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int idx = 0;
  void onTap() {
    setState(
      () {
        if (idx == questions.length - 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Quiz(StartScreen())));
        } else {
          idx++;
          print(idx);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[idx];
    final List<String> options = currentQuestion.options;
    final List<String> shuffledOptions = currentQuestion.shuffledOptions();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 241, 239, 239)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            for (int i = 0; i < currentQuestion.options.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  text: shuffledOptions[i],
                  onTap: onTap,
                ),
              )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
