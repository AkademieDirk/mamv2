import 'package:flutter/material.dart';

import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

class BlueCanInformation extends StatelessWidget {
  const BlueCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Die blaue Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/blaue_Tonne_transparent.png",
          textcolor: Colors.blue),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
