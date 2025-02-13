import 'package:flutter/material.dart';
// import 'package:quiz_app/load_page.dart';

class Quiz extends StatelessWidget {
  final Widget widget;
  const Quiz(this.widget, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
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
            child: widget,
          ),
        ),
      ),
    );
  }
}
