import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color rang;
  final Widget? cardChild;
  final Function()? onPress;
  ReusableCard({required this.rang, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: rang,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: cardChild,
      ),
    );
  }
}
