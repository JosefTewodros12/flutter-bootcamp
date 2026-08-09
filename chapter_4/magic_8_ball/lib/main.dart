import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNum = 1;
  void changeImage() {
    setState(() {
      imageNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Ask me anything",
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              changeImage();
            },
            child: Image.asset("assets/images/ball$imageNum.png"),
          ),
        ),
      ),
    );
  }
}
