import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants/constant.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    this.bmiResult,
    this.bmiInterpritation,
    this.bmiDescription,
  });
  final String? bmiResult;
  final String? bmiInterpritation;
  final String? bmiDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: backgroundColour,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: numtextstyle,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiInterpritation!,
                    style: labelResultStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(bmiResult!, style: numResultStyle),
                  Text(
                    bmiDescription!,
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
    );
  }
}
