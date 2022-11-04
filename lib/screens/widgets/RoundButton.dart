import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPress;
  const RoundIconButton({super.key, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: onPress,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF8D9EFF),
      child: Icon(icon),
    );
  }
}
