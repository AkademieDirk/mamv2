import 'package:flutter/material.dart';
import 'package:mamv2/features/change_screen/content_switcher.dart';
import 'package:mamv2/features/login_registration/repositorys/user_auth_repository.dart';
import 'package:mamv2/features/login_registration/screens/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder(
          stream: UserAuthRepository().authInstance.authStateChanges(),
          builder: (context, snapshot) {
            // If logged in
            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.active) {
              // show HomeScreen,
              return (const ContentSwitcher());
              // if not logged in
            } else {
              // show Login
              return const LoginScreen();
            }
          },
        ),
      ),
    );
  }
}
