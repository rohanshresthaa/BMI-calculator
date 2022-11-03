import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final String label;
  final IconData icon;
  Gender({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 20.0,
            color: Color(0xFFB9E0FF),
          ),
        ),
      ],
    );
  }
}