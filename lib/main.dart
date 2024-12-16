import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/login_registration/user_auth_repository.dart';

import 'package:mamv2/features/login_registration/user_repository.dart';
import 'package:mamv2/features/news/repository/news_database.dart';
import 'package:mamv2/features/news/repository/news_repository.dart';

import 'package:mamv2/features/welcome/welcome_screen.dart';
import 'package:mamv2/firebase_options.dart';
import 'package:mamv2/repositories/database_repository.dart';
import 'package:mamv2/repositories/mock_database.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    Provider<DatabaseRepository>(create: (_) => MockDatabase()),
    Provider<NewsRepository>(create: (_) => NewsDatabase()),
    Provider<UserRepository>(
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
      theme: mamTheme,
      home: Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
