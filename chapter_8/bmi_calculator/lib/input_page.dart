import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/reusable_card.dart';
import 'components/reusable_button.dart';
import 'components/icon_content.dart';
import 'constants/constant.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //1 for male ... 2 for female
  void updateColour(int genderNum) {
    if (genderNum == 1) {
      if (maleColour == inactiveColour && femaleColour == inactiveColour) {
        maleColour = activeColour;
      } else {
        maleColour = inactiveColour;
      }
    } else if (genderNum == 2) {
      if (femaleColour == inactiveColour && maleColour == inactiveColour) {
        femaleColour = activeColour;
      } else {
        femaleColour = inactiveColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: backgroundColour,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleColour,
                      cardChild: IconContent(
                        genderText: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleColour,
                      cardChild: IconContent(
                        genderText: 'FEMALE',
                        genderIcon: FontAwesomeIcons.venus,
                      ),
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
