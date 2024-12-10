import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';

import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/abfall_abc/widgets/classes/my_own_container.dart';
import 'package:mamv2/features/Login_Registration/login_screen.dart';

class PasswordRenew extends StatelessWidget {
  const PasswordRenew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: background,
      child: Column(
        children: [
          verticalBigSpacing,
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Text("Passwort vergessen",
                  style: Theme.of(context).textTheme.headlineMedium),
              const Expanded(child: SizedBox()),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: MyOwnContainer(
              text: "  Enter your EMail",
            ),
          ),
          verticalSpacing,
          const SizedBox(height: 50),
          Center(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    backgroundGradientStartColor,
                    backgroundGradientEndColor,
                  ]),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: buttonBorder, width: 1.0)),
              height: 50,
              width: 300,
              child: Text(
                "Send Code",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(height: 150),
          verticalSpacing,
          verticalBigSpacing,
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Text("Dir ist dein Passwort wieder eingefallen?",
                  style: Theme.of(context).textTheme.bodySmall),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: Text(
                    " Hier einloggen",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: darkgreenText,
                        ),
                  )),
              const Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    ));
  }
}
