import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/News/news_container.dart';

import 'package:mamv2/shared/basic_app_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Aktuelle Meldungen",
          canColorImagePath: "assets/images/News/news.jpg",
          textcolor: Colors.black),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpacing,
                  verticalSpacing,
                  GestureDetector(
                    onTap: () {
                      alertDialogNews(context);
                    },
                    child: const NewsContainer(
                      newsimagepath: "assets/images/News/Blaue_Tonne_news.jpg",
                      text: "Papierabfuhr erfolgt später",
                    ),
                  ),
                  verticalMediumSpacing,
                  const NewsContainer(
                      text: "Der Verkehr rollt wieder auf der Loekampstraße",
                      newsimagepath: "assets/images/News/NewsLoekampstr.jpg"),
                  verticalMediumSpacing,
                  const NewsContainer(
                      text: "Der Herbst ist da: Die Laubabfuhr startet",
                      newsimagepath: "assets/images/News/Herbst.jpg"),
                  verticalMediumSpacing,
                  const NewsContainer(
                      text: "Der Herbst ist da: Die Laubabfuhr startet",
                      newsimagepath: "assets/images/News/Herbst.jpg")
                ],
              ),
            ),
          )),
    );
  }
}

//! Hier wird gerade getestet mit dem Alert Dialog. Dazu muss ich noch ein  News Repository anlegen
Future<dynamic> alertDialogNews(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Titel"),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Überschrift"),
            Text("Nachricht"),
            Image(image: AssetImage("assets/images/News/news.jpg"))
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Schließt den Dialog
            },
            child: const Text("ActionsText"),
          ),
        ],
      );
    },
  );
}
