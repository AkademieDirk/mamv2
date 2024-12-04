import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';

import 'package:mamv2/shared/basic_app_bar.dart';

class BlackCanInformation extends StatelessWidget {
  const BlackCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Die schwarze Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/schwarz_transparent.png",
          textcolor: Colors.black),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
