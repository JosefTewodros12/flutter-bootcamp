import 'package:flutter/material.dart';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Ask me anything")),
        body: Image.asset("assets/images/ball1.png"),
      ),
    );
  }
}
