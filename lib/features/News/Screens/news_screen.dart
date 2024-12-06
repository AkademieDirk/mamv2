import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/News/news_container.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
  });

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // Variablen für die News
  String title = "Lade die aktuellen News";
  String content = "Unbekannt";
  String urlToImage = "unbekannt";
  String url = "unbekannt";
  String auswahl = "unbekannt";
  TextEditingController auswahlfeld = TextEditingController();
  @override
  void initState() {
    super.initState();
    // Beim Start der Seite rufen wir diese Methode auf
    _randomNews();
    auswahl = "Recklinghausen";
  }

  // Methode zum Abrufen der News
  Future<void> _randomNews() async {
    final Uri uri = Uri.https('newsapi.org', '/v2/everything', {
      'q': auswahl, // Suchbegriff für Nachrichten
      'apiKey': 'd54d923ea5fa477f95cb9b9d03ababf5',
    });

    final http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      Random random =
          Random(); // hier wird eine Instanz der random Klasse erstellt

      int randomNumber = random.nextInt(10) + 1;
      final article = data['articles']
          [randomNumber]; // ein zufälliger Artikel zwischen 1 und 10

      setState(() {
        // Aktuelle News in Variablen speichern
        title = article['title'] ?? "Kein Titel verfügbar";
        content = article['content'] ?? "Keine Beschreibung verfügbar";
        urlToImage = article['urlToImage'] ?? "Kein Bild verfügbar";
        url = article["url"];
        randomNumber;
      });
    }
  }

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
            child: Column(
              children: [
                Center(
                  child: NewsContainer(
                    title: title,
                    urlToImage: urlToImage,
                    content: content,
                    url: url,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      _randomNews();
                    },
                    child: const Text("noch mehr News")),
                TextFormField(
                    controller: auswahlfeld,
                    onChanged: (value) {
                      setState(() {
                        auswahl = value;
                      });
                    })
              ],
            )));
  }
}
