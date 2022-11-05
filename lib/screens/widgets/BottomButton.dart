import 'package:bmi/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtomButton extends StatelessWidget {
  final Function() onTap;
  final String buttonTitle;
  const ButtomButton({
    Key? key,
    required this.onTap,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        height: 70.0,
        decoration: BoxDecoration(
          color: bottomColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: bottomText,
          ),
        ),
      ),
    );
  }
}
