import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, this.icon});
  final FaIconData? icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
      constraints: const BoxConstraints.tightFor(width: 65.0, height: 65.0),
      child: FaIcon(icon, size: 20),
    );
  }
}
