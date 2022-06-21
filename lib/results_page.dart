import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  //const ResultsPage({Key? key}) : super(key: key);
  ResultsPage({this.bmiResult, this.resultText, this.interpretation});
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 18),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText!,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult!,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation!,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: kBottomContainerHeight,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                color: kBottomContainerColor,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kLargeButtonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// appBar: AppBar(
//   title: Center(
//     child: Text(
//       'BMI CALCULATOR',
//     ),
//   ),
// ),
