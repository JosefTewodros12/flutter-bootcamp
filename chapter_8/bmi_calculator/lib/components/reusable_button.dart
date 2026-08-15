import 'package:flutter/material.dart';

class Reusablebutton extends StatelessWidget {
  final Color btnColour;
  final String btnText;
  const Reusablebutton({
    super.key,
    required this.btnColour,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: btnColour,
      height: 80,
      child: Center(
        child: Text(btnText, style: TextStyle(fontSize: 25, letterSpacing: 3)),
      ),
    );
  }
}
