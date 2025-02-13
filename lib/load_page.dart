import 'package:flutter/material.dart';
import 'package:quiz_app/question_page.dart';
import 'package:quiz_app/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const SizedBox(height: 30),
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          height: 300,
          color: const Color.fromRGBO(255, 255, 255, 0.5),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Learn Flutter the Fun Way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 241, 240, 240),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Quiz(QuestionPage()),
              ),
            );
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            side: const BorderSide(width: 1, color: Colors.deepPurple),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            iconColor: Colors.white,
            iconSize: 25,
          ),
          icon: Icon(Icons.quiz),
          label: Text("Start Quiz!"),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
