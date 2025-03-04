// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:mamv2/config/themes/themes.dart';

import 'package:mamv2/features/login_registration/repositorys/user_auth_repository.dart';

import 'package:mamv2/firebase_options.dart';
import 'package:mamv2/repositories/database_repository.dart';
import 'package:mamv2/repositories/mock_database.dart';
import 'package:mamv2/start_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    Provider<DatabaseRepository>(create: (_) => MockDatabase()),
    Provider<UserAuthRepository>(
      create: (_) => UserAuthRepository(),
    ),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mamTheme,
      home: Scaffold(
        body: const StartScreen(),
      ),
    );
  }
}
