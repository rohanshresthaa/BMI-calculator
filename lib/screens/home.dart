// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:bmi/screens/widgets/icon.dart';
import 'package:bmi/screens/widgets/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF404258);
const bottomColor = Color(0x404258);
const inActive = Color(0xFF6B728E);

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
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      selectedGender = gender.male;
                    });
                  }),
                  child: ReusableCard(
                    rang: selectedGender == gender.male
                        ? inActive
                        : activeCardColor,
                    cardChild: Gender(
                      label: 'Male',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  }),
                  child: ReusableCard(
                    rang: selectedGender == gender.female
                        ? inActive
                        : activeCardColor,
                    cardChild:
                        Gender(label: 'Female', icon: FontAwesomeIcons.venus),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              rang: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(rang: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(rang: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: 70.0,
            color: bottomColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
