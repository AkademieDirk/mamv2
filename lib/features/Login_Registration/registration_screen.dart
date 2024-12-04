import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamv2/config/colors/colors.dart';

import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/Abfall_ABC/widgets/classes/expanded_sized_box.dart';
import 'package:mamv2/features/Abfall_ABC/widgets/classes/my_own_container.dart';
import 'package:mamv2/features/Login_Registration/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: background,
      child: Column(
        children: [
          verticalBigSpacing,
          verticalBigSpacing,
          Row(
            children: [
              const ExpandedSizedBox(),
              Text("Registriere dich zum Starten",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const ExpandedSizedBox()
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: MyOwnContainer(
              text: "  wähle deinen Usernamen",
            ),
          ),
          verticalSpacing,
          const MyOwnContainer(text: "  EMail"),
          verticalSpacing,
          const MyOwnContainer(text: "  Password"),
          verticalSpacing,
          const MyOwnContainer(text: "  Confirm Password"),
          verticalSpacing,
          const Row(
            children: [
              SizedBox(
                width: 250,
              ),
            ],
          ),
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
                " Register ",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            "or Register with",
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          verticalSpacing,
          Row(children: [
            const Expanded(child: SizedBox()),
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 50,
                width: 100,
                child: const Center(child: FaIcon(FontAwesomeIcons.google))),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 50,
              width: 100,
              child: const Icon(
                Icons.facebook,
                size: 40,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 50,
              width: 100,
              child: const Icon(
                Icons.apple,
                size: 40,
              ),
            ),
            const Expanded(child: SizedBox())
          ]),
          verticalSpacing,
          Row(children: [
            const Expanded(child: SizedBox()),
            Text("Du hast schon einen Account? ",
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
              ),
            ),
            const Expanded(child: SizedBox())
          ])
        ],
      ),
    ));
  }
}
