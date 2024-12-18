// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/abfall_abc/widgets/sized_elevation_button.dart';
import 'package:mamv2/features/change_screen/content_switcher.dart';
import 'package:mamv2/features/login_registration/screens/login_screen.dart';
import 'package:mamv2/features/login_registration/screens/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: background,
        child: SafeArea(
            child: Column(children: [
          const SizedBox(
            height: 300,
            child: Image(
                image: AssetImage("assets/icons/Logos/logo-transparent.png")),
          ),
          verticalSpacing,
          Text(
            "Herzlich Willkommen ",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          verticalBigSpacing,
          SizedElevationButton(
            screenname: const ContentSwitcher(),
            text: "weiter als Gast",
          ),
          verticalSpacing,
          SizedElevationButton(text: "Login", screenname: const LoginScreen()),
          verticalSpacing,
          SizedElevationButton(
              text: "Registrierung", screenname: const RegistrationScreen())
        ])),
      ),
    );
  }
}
