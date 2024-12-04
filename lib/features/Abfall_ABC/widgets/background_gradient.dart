import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            // hier wird der Hintergund versehen mit eine Gradient. Die Start un dEndfarben werden aus den Colors geholt
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
          backgroundGradientStartColor,
          backgroundGradientEndColor
        ])));
  }
}
