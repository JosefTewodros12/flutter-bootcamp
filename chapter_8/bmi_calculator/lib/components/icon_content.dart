import 'package:bmi_calculator/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.genderText,
    required this.genderIcon,
  });
  final String genderText;
  final FaIconData genderIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(genderIcon, size: 80),
        SizedBox(height: 10),
        Text(
          genderText,
          //style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
          style: textstyle,
        ),
      ],
    );
  }
}
