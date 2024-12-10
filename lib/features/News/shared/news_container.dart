import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.title,
    required this.urlToImage,
    required this.content,
    required this.url,
  });
  final String title;
  final String content;
  final String urlToImage;
  final String url;

  // Anmedelnde mit Apple
  Future<void> _launchUrlA() async {
    final Uri urla = Uri.parse(url);
    if (!await launchUrl(urla)) {
      throw Exception("Seite konnte nicht geladen werden $urla");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium,
          )),
        ),
        verticalSmallSpacing,
        SizedBox(
          height: 200,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(content,
                    style: Theme.of(context).textTheme.bodyMedium)),
          ),
        ),
        verticalSmallSpacing,
        GestureDetector(
            onTap: () => _launchUrlA(),
            child:
                const Center(child: Text("Hier geht zum kompletten Artikel"))),
        verticalMediumSpacing,
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.network(
            urlToImage,
          ),
        ),
      ],
    );
  }
}
