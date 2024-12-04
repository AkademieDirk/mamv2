import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamv2/config/colors/colors.dart';

import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/Login_Registration/Logic/email_examination.dart';
import 'package:mamv2/features/Login_Registration/password_renew.dart';
import 'package:mamv2/features/Login_Registration/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// String? ausgabe = "";

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController mailadress = TextEditingController();
  final TextEditingController password = TextEditingController();
  final String mail = "info@edvprofis.com";
  String errortext = "Test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: background,
      child: SafeArea(
        child: Column(
          children: [
            verticalBigSpacing,
            verticalBigSpacing,
            Center(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 200,
                height: 50,
                child: TextFormField(
                  style: const TextStyle(fontSize: 12),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Bitte Mailadresse eingeben",
                  ),
                  controller: mailadress,
                ),
              ),
            )),
            verticalSpacing,
            Center(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 200,
                height: 50,
                child: TextFormField(
                  style: const TextStyle(fontSize: 12),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Bitte Passwort eingeben",
                  ),
                  controller: password,
                ),
              ),
            )),
            // Text("$ausgabe"),

            Row(
              children: [
                const SizedBox(
                  width: 250,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PasswordRenew()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    String? ausgabe = emailValidator(mailadress.text);
                    // Snackbar anzeigen

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        textAlign: TextAlign.center,
                        ausgabe!,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 24),
                      ),
                      backgroundColor: Colors.red,
                    ));
                  });
                },
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
                    "Login",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            const Text(
              "or Login with",
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
            verticalBigSpacing,
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Text("Du hast noch keinen Account? ",
                    style: Theme.of(context).textTheme.bodySmall),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()));
                    },
                    child: Text(
                      " Register Now",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: darkgreenText,
                          ),
                    )),
                const Expanded(child: SizedBox()),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
