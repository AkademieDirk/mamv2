import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/muelltrennung/repositories/recycling_provider.dart';
import 'package:mamv2/shared/basic_app_bar.dart';
import 'package:provider/provider.dart';

class YellowCanInformation extends StatelessWidget {
  const YellowCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RecyclingProvider(),
      child: Scaffold(
        appBar: const BasicAppBar(
          textcolor: Colors.yellow,
          title: "Die gelbe Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/gelbe_Tonne_transparent.png",
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: background,
          child: Consumer<RecyclingProvider>(
            builder: (context, provider, child) {
              // Hole die Recycling-Texte aus dem Provider
              List<String> recyclingText = provider.yellowRecyclingText;

              // Kombiniere alle Texte der Liste in einem einzigen String
              String fullText = recyclingText.join("\n");

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      fullText, // Der gesamte Text wird in einem einzigen String angezeigt
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
