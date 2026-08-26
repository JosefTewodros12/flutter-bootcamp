import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftButton = 1;
  int rightButton = 1;

  void changeDiceFace() {
    setState(() {
      rightButton = Random().nextInt(6) + 1;
      leftButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          leading: Image.asset("assets/images/logo.png"),
          elevation: 3,
          title: Text(
            "Dicee",
            style: TextStyle(
              fontFamily: "Source Sans 3",
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset("assets/images/dice$leftButton.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset("assets/images/dice$rightButton.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
