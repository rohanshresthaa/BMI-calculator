import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color rang;
  final Widget? cardChild;
  ReusableCard({required this.rang, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: rang,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: cardChild,
    );
  }
}
