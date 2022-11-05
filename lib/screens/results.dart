import 'package:bmi/screens/widgets/BottomButton.dart';
import 'package:bmi/screens/widgets/reusableCard.dart';
import 'package:bmi/utils/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultAnswer;
  final String interpretation;
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultAnswer,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: resultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              rang: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultAnswer.toUpperCase(),
                    style: resultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiText,
                  ),
                  Text(
                    interpretation,
                    style: bmiBodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            buttonTitle: "RE-CALCULATE",
            onTap: (() {
              Navigator.pop(context);
            }),
          ),
        ],
      ),
    );
  }
}
