import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  QuizPageState createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  int questionCounter = 0;
  //   List<String> questions = [
  //     'You can lead a cow down stairs but not up stairs.',
  //     'Approximately one quarter of human bones are in the feet.',
  //     'A slug\'s blood is green.',
  //   ];
  //   List<bool> answers = [false, true, true];
  //   /*question1: 'You can lead a cow down stairs but not up stairs.', false,
  // question2: 'Approximately one quarter of human bones are in the feet.', true,
  // question3: 'A slug\'s blood is green.', true,
  //  */
  List<Icon> scoreKeeper = [
    Icon(Icons.check, color: Colors.green, size: 30),
    Icon(Icons.close, color: Colors.red, size: 30),
    Icon(Icons.check, color: Colors.green, size: 30),
    Icon(Icons.close, color: Colors.red, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionCounter].question,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
              ),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  questionCounter += 1;
                  // bool correctAnswer = answers[questionCounter];
                  // if (correctAnswer == true) {
                  //   print("Your are correct");
                  // }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  questionCounter += 1;
                  // bool correctAnswer = answers[questionCounter];
                  // if (correctAnswer == false) {
                  //   print("you are correct");
                  // }
                });
              },
            ),
          ),
        ),
        //todo: Add a Row here as your score keeper
        Row(children: scoreKeeper),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
