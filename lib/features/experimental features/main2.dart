import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bewegter Text',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bewegter Text Beispiel'),
        ),
        body: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Hier ist bewegter Text!',
                speed: const Duration(milliseconds: 100),
                textStyle: const TextStyle(
                    fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              FadeAnimatedText(
                'Und ein anderer Effekt!',
                duration: const Duration(seconds: 2),
                textStyle: const TextStyle(
                    fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            ],
            totalRepeatCount: 5, // Wie oft die Animation wiederholt wird
            pause: const Duration(seconds: 1), // Pause zwischen den Animationen
          ),
        ),
      ),
    );
  }
}
