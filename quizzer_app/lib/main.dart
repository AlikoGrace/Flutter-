import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
// to know what to encapsulate, ask yourself what should be hidden from the user
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Quizzer(),
    );
  }
}

class Quizzer extends StatefulWidget {
  const Quizzer({Key? key}) : super(key: key);

  @override
  State<Quizzer> createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  // Question q1 = Question(q: "The human body has 89 tissues", a: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  // quizBrain.questionBank[questionNumber].questionText,
                  //the above doesn't work after encapsulation, since question
                  //bank is now private
                  quizBrain.getQuestionText(),
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              flex: 5,
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      bool correctAnswer =

                          // quizBrain.questionBank[questionNumber].questionAnswer;
                          quizBrain.getQuestionAnswer();
                      if (correctAnswer == true) {
                        print("you are right ");
                      } else {
                        print("you are wrong");
                      }
                      setState(() {
                        quizBrain.nextQuestion();
                      });
                    },
                    child: Container(
                      // padding: EdgeInsets.symmetric(
                      //   horizontal: 120,
                      //   vertical: 25,
                      // ),
                      width: double.infinity,
                      height: 70,
                      child: Center(
                          child: Text(
                        "True",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                      color: Colors.green,
                    ))),
            Expanded(
              child: TextButton(
                onPressed: () {
                  bool correctAnswer = quizBrain.getQuestionAnswer();
                  if (correctAnswer == false) {
                    print("you are right");
                  } else {
                    print("you are wrong");
                  }
                  setState(() {
                    quizBrain.nextQuestion();
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  // padding: EdgeInsets.symmetric(
                  //   horizontal: 120,
                  //   vertical: 25,                    ),
                  child: Center(
                      child: Text(
                    "False",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  color: Colors.red,
                ),
              ),
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
