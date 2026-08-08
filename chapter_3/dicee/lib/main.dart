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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text(
            "Dicee",
            style: TextStyle(
              fontFamily: "Source Sans 3",
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftButton = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset("assets/images/dice${leftButton}.png"),
                ),
              ),
              Expanded(child: Image.asset("assets/images/dice1.png")),
            ],
          ),
        ),
      ),
    );
  }
}
