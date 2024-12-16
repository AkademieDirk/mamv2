import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mamv2/features/change_screen/content_switcher.dart';
import 'package:mamv2/features/login_registration/login_screen.dart';

class AuthStatusPage extends StatelessWidget {
  const AuthStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
// User ist eingeloggt
        if (snapshot.hasData) {
          return ContentSwitcher();
        } else {
          return LoginScreen();
        }
      },

// User ist nicht eingeloggt
    ));
  }
}
