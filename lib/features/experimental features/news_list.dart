import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Die News im Blick",
      home: NewsScreen(),
    );
  }
}

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // hier stehen die Werte beim Start drin
  String title = "Lade die aktuellen News";
  String description = "Unbekannt";
  String urlToImage = "unbekannt";

  //! Liste für die News etc.
  List<String> titleList = [];
  List<String> descriptionList = [];
  List<String> urlToImageList = [];
  // dann wird dies ausgeführt
  @override
  void initState() {
    super.initState();
    _loadNewsFromPrefs();
  }

  Future<void> _randomNews() async {
    final Uri uri = Uri.https('newsapi.org', '/v2/everything', {
      'q': 'Marl',
      'apiKey': 'd54d923ea5fa477f95cb9b9d03ababf5',
    });

    final http.Response response = await http.get(uri);
    //Future<void> _randomNews() async {

    //final Uri uri = Uri.https("//newsapi.org", "/v2/everything" , "q" ,"Recklinghausen");
    //final headers = {"X-Api-Key": "d54d923ea5fa477f95cb9b9d03ababf5"};
    //final http.Response response = await http.get(uri,);
//!------ Hier nachfragen wie in eine Liste speichern
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final article = data["articles"][0];
      setState(() {
        title = article['title'];
        description = article['description'];
        urlToImage = article["urlToImage"];
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue,
            content: Text(
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
                "News erfolgreich geladen ")));
      });
      _saveNewsToPrefs(title, description, urlToImage);
    }
  }

// hier werden die Sachen in die SP geschrieben
  Future<void> _saveNewsToPrefs(
      String quote, String author, String category) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("title", title);
    await prefs.setString("description", description);
    await prefs.setString("urlToImage", urlToImage);
  }

  Future<void> _loadNewsFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final savedTitle = prefs.getString("title");
    final savedDescription = prefs.getString("description");
    final savedUrlToImage = prefs.getString("urlToImage");

    if (savedTitle != null &&
        savedDescription != null &&
        savedUrlToImage != null) {
      setState(() {
        title = savedTitle;
        description = savedDescription;
        urlToImage = savedUrlToImage;
      });
    }
  }

// hier wird das Zitat gelöscht
  Future<void> _clearNews() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('quote');
    await prefs.remove("author");
    await prefs.remove("category");
    setState(() {
      title = 'Lade ein Zitat...';
      description = "";
      urlToImage = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
          backgroundColor: Colors.blue, title: const Text("Aktuelle News")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('"$title"',
                  style: const TextStyle(
                      fontSize: 20, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 8),
            Text(description,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            const SizedBox(height: 8),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: _randomNews, child: const Text("Neue News holen")),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: _clearNews,
                child: const Text("Letzte News löschen")),
            Container(child: Image.network(urlToImage))
          ],
        ),
      ),
    );
  }
}
