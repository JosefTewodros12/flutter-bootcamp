import 'package:flutter/material.dart';

class Reusablebutton extends StatelessWidget {
  final Color btnColour;
  final String btnText;
  final VoidCallback onPress;
  const Reusablebutton({
    super.key,
    required this.btnColour,
    required this.btnText,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        color: btnColour,
        height: 80,
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(fontSize: 25, letterSpacing: 3),
          ),
        ),
      ),
    );
  }
}
