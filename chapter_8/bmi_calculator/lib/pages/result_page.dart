import 'package:bmi_calculator/components/reusable_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constant.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: backgroundColour,
      ),
      body: Expanded(
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(child: Text('Your Result', style: numtextstyle)),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: labelResultStyle,
                      textAlign: TextAlign.left,
                    ),
                    Text('18.3', style: numResultStyle),
                    Text(
                      'Your BMI result is quite low, you should eat more!',
                      style: description,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Reusablebutton(
              btnColour: btnColor,
              btnText: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
