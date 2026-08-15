import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/reusable_card.dart';
import 'components/reusable_button.dart';
import 'components/icon_content.dart';

/*
  0xFF1D1E33
  0xFF0A0E21 
*/
final btnColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: IconContent(
                      genderText: 'Male',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: IconContent(
                      genderText: 'Female',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Reusablebutton(btnColour: btnColor, btnText: 'Calculate'),
        ],
      ),
    );
  }
}
