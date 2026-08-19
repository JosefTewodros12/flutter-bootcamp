import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants/constant.dart';

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
        Text(genderText, style: textstyle),
      ],
    );
  }
}
