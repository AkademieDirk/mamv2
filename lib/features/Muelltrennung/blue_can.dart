import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/muelltrennung/repositories/recycling_provider.dart';
import 'package:mamv2/shared/basic_app_bar.dart';
import 'package:provider/provider.dart';

class BlueCanInformation extends StatelessWidget {
  const BlueCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RecyclingProvider(),
      child: Scaffold(
        appBar: const BasicAppBar(
          textcolor: Colors.black,
          title: "Die blaue Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/blaue_Tonne_transparent.png",
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          //! warum kann ich die height nicht anpassen? Der Text verschwindet
          decoration: background,
          child: Consumer<RecyclingProvider>(
            builder: (context, provider, child) {
              // Hole die Recycling-Texte aus dem Provider
              List<String> recyclingText = provider.blueRecyclingText;

              // Kombiniere alle Texte der Liste in einem einzigen String
              String fullText = recyclingText.join("\n");

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
