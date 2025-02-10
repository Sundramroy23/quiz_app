import 'package:flutter/material.dart';
import 'package:quiz_app/question_page.dart';

class LoadPage extends StatelessWidget {
  const LoadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Container(
            constraints: BoxConstraints.expand(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Colors.purple,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Column(
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
                const Text(
                  'Learn Flutter the Fun Way!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 241, 240, 240),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Gobbar()));
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
            ),
          ),
        ),
      ),
    );
  }
}
