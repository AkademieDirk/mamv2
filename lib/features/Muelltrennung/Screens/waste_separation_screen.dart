import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/muelltrennung/black_can.dart';
import 'package:mamv2/features/muelltrennung/blue_can.dart';
import 'package:mamv2/features/muelltrennung/brown_can.dart';
import 'package:mamv2/features/muelltrennung/yellow_can.dart';
import 'package:mamv2/features/news/shared/garbage_paint_container.dart';

import 'package:mamv2/shared/basic_app_bar.dart';

class Muelltrennung extends StatelessWidget {
  Muelltrennung({super.key});

  final ThemeData mamTheme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const BasicAppBar(
          title: "Was gehört wo rein?",
          canColorImagePath:
              "assets/images/TrashCanColor/Tonne_gruen_comic.png",
          textcolor: Colors.white,
        ),
        body: Container(
            width: double.infinity,
            decoration: background,
            child: Column(children: [
              verticalSmallSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const YellowCanInformation(),
                      ));
                },
                child: const GarbageCanPaintContainer(
                    text: "Gelbe Tonne",
                    trashcolorimagepath:
                        "assets/images/TrashCanColor/gelbe_Tonne_transparent.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BlueCanInformation(),
                      ));
                },
                child: const GarbageCanPaintContainer(
                  trashcolorimagepath:
                      "assets/images/TrashCanColor/blaue_Tonne_transparent.png",
                  text: "Blaue Tonne",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BrownCanInformation(),
                  ));
                },
                child: const GarbageCanPaintContainer(
                  trashcolorimagepath:
                      "assets/images/TrashCanColor/braune_Tonne_transparent.png",
                  text: "braune Tonne",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BlackCanInformation(),
                  ));
                },
                child: const GarbageCanPaintContainer(
                  trashcolorimagepath:
                      "assets/images/TrashCanColor/schwarz_transparent.png",
                  text: "Restmüll Tonne",
                ),
              ),
            ])));
  }
}
