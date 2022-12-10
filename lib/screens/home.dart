// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:bmi/screens/results.dart';
import 'package:bmi/screens/widgets/BottomButton.dart';
import 'package:bmi/screens/widgets/RoundButton.dart';
import 'package:bmi/screens/widgets/icon.dart';
import 'package:bmi/screens/widgets/reusableCard.dart';
import 'package:bmi/utils/calculation.dart';
import 'package:bmi/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum gender {
  male,
  female,
}

gender? selectedGender;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Color maleColor = inActive;
  Color femaleColor = inActive;
  int height = 180;
  int weight = 60;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
        centerTitle: true,
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = gender.male;
                    });
                  },
                  rang: selectedGender == gender.male
                      ? inActive
                      : activeCardColor,
                  cardChild: Gender(
                    label: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  },
                  rang: selectedGender == gender.female
                      ? inActive
                      : activeCardColor,
                  cardChild:
                      Gender(label: 'FEMALE', icon: FontAwesomeIcons.venus),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: labelText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: numberText),
                      const Text(
                        "cm",
                        style: labelText,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: const Color(0xFF8D9EFF),
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.white,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: const Color(0x29B9E0FF),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: ((value) {
                        setState(() {
                          height = value.round();
                        });
                      }),
                    ),
                  ),
                ],
              ),
              rang: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: labelText,
                          ),
                          Text(
                            weight.toString(),
                            style: numberText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              RoundIconButton(
                                  onPress: (() {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                                  icon: FontAwesomeIcons.plus),
                            ],
                          )
                        ],
                      ),
                      rang: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: labelText,
                          ),
                          Text(
                            age.toString(),
                            style: numberText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              RoundIconButton(
                                  onPress: (() {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                                  icon: FontAwesomeIcons.plus),
                            ],
                          )
                        ],
                      ),
                      rang: activeCardColor),
                ),
              ],
            ),
          ),
          ButtomButton(
            buttonTitle: "CALCULATE",
            onTap: (() {
              Calculate calc = Calculate(height, weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultAnswer: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
