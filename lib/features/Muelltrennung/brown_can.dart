import 'package:flutter/material.dart';

import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

class BrownCanInformation extends StatelessWidget {
  const BrownCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          textcolor: Color.fromARGB(255, 74, 50, 45),
          title: "Die braune Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/braune_Tonne_transparent.png"),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
