import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/login_registration/password_renew.dart';
import 'package:mamv2/features/login_registration/repositorys/user_auth_repository.dart';
import 'package:mamv2/features/login_registration/repositorys/user_repository.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// String? ausgabe = "";

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
            const SizedBox(height: 100),
            Center(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Future<bool> loginFuture = context
                          .read<UserAuthRepository>()
                          .signUserIn(
                              eMail: emailController.text,
                              password: passwordController.text);
                      // Snackbar anzeigen
                      loginFuture.then(
                        (value) {
                          if (value == true) {
                            // showSuccessSnackbar(context);
                            const Text(" eingeloggt");
                          }
                        },
                      );
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          backgroundGradientStartColor,
                          backgroundGradientEndColor,
                        ]),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: buttonBorder, width: 1.0)),
                    height: 50,
                    width: 300,
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Future<bool> loginFuture = context
                        .read<UserAuthRepository>()
                        .signUserIn(
                            eMail: emailController.text,
                            password: passwordController.text);
                    // Snackbar anzeigen
                    loginFuture.then(
                      (value) {
                        if (value == true) {
                          // showSuccessSnackbar(context);
                          const Text(" eingeloggt");
                        }
                      },
                    );
                  });
                },
                child: const Text(" Test")),
          ],
        ),
      ),
    ));
  }

  void showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        textAlign: TextAlign.center,
        "Test",
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
      backgroundColor: Colors.red,
    ));
  }
}
