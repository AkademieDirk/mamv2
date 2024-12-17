// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/change_screen/content_switcher.dart';
import 'package:mamv2/features/login_registration/password_renew.dart';

import 'package:mamv2/features/login_registration/repositorys/user_repository.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Bitte Mailadresse eingeben",
                    ),
                    controller: emailController),
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
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Bitte Passwort eingeben",
                    ),
                    controller: passwordController),
              ),
            )),
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
            const SizedBox(
              height: 100,
              width: 100,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(const Size(300, 50)),
                ),
                onPressed: () async {
                  // hier wird versucht den User einzuloggen
                  try {
                    bool isLoggedIn =
                        await context.read<UserRepository>().signUserIn(
                              eMail: emailController.text,
                              password: passwordController.text,
                            );
// Überprüfen ob eingeloggt

                    if (isLoggedIn) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar((const SnackBar(
                        content: Text(" Erfolgreich eingeloggt"),
                        backgroundColor: Colors.green,
                      )));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContentSwitcher()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Ein Fehler ist aufgetreten"),
                        backgroundColor: Colors.red,
                      ));
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Dieser Fehler ist aufgetreten : $e"),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    ));
  }

  void showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        textAlign: TextAlign.center,
        "User  ist eingeloggt",
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
      backgroundColor: Colors.red,
    ));
  }
}
