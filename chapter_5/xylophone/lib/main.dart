import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int sound) {
    final player = AudioPlayer();
    player.play(AssetSource("note$sound.wav"));
  }

  Expanded drawKey(int soundNum, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              drawKey(1, Colors.red),
              drawKey(2, Colors.orange),
              drawKey(3, Colors.yellow),
              drawKey(4, Colors.green),
              drawKey(5, Colors.teal),
              drawKey(6, Colors.blue),
              drawKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
