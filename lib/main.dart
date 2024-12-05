import 'package:flutter/material.dart';
import 'package:mamv2/features/Welcome/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            //theme: mamTheme,
            WelcomeScreen(),
      ),
    );
  }
}
