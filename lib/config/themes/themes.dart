import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/config/sizes/sizes.dart';

ThemeData mamTheme = ThemeData(
    fontFamily: "Urbanist",
    textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: smallTextSize),
        bodyMedium: TextStyle(fontSize: mediumTextSize),
        bodyLarge: TextStyle(fontSize: bigTextSize),
        displaySmall: TextStyle(
          fontSize: 16,
        ),
        headlineSmall:
            TextStyle(fontSize: smallTextSize, fontWeight: FontWeight.bold),
        headlineMedium:
            TextStyle(fontSize: mediumTextSize, fontWeight: FontWeight.bold),
        headlineLarge:
            TextStyle(fontSize: bigTextSize, fontWeight: FontWeight.w500)));

Icon closebutton = const Icon(Icons.close_rounded);
const verticalSmallSpacing = SizedBox(
  height: 10,
);

const verticalSpacing = SizedBox(
  height: 20,
);
const verticalMediumSpacing = SizedBox(
  height: 40,
);
const verticalBigSpacing = SizedBox(
  height: 60,
);
//  Einstellungen für den Screenhintergrund zum rauskopieren

const BoxDecoration background = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [backgroundGradientStartColor, backgroundGradientEndColor]),
);

final BoxDecoration borderBasics = BoxDecoration(
  color: Colors.white70,
  border: Border.all(color: buttonBorder, width: 1.0),
  borderRadius: const BorderRadius.all(
    Radius.circular(10),
  ),
);
TextStyle textbackgroungrounded() {
  return TextStyle(
      background: Paint()
        ..color = Colors.blue
        ..strokeWidth = 30
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
      color: Colors.black);
}
