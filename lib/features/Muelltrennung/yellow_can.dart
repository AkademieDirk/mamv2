import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

class YellowCanInformation extends StatelessWidget {
  const YellowCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        textcolor: Colors.yellow,
        title: "Die gelbe Tonne",
        canColorImagePath:
            "assets/images/TrashCanColor/gelbe_Tonne_transparent.png",
      ),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [Text("Test")],
          )),
    );
  }
}
