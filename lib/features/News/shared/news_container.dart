import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mamv2/features/news/logic/service.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
        )),
        // verticalSmallSpacing,
        SizedBox(
          height: 200,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(content,
                    style: Theme.of(context).textTheme.bodyMedium)),
          ),
        ),
        // verticalSmallSpacing,
        // hier wird mit launch UrLA die Nachricht über dne Link aufgerufen
        GestureDetector(
            onTap: () => NewsService.launchUrlA(url: url),
            child: const Center(
                child: Text(
              "Hier geht zum kompletten Artikel",
              style: TextStyle(fontWeight: FontWeight.bold),
            ))),
        CachedNetworkImage(
          imageUrl: urlToImage, // Bild-URL
          placeholder: (context, urlToImage) =>
              const CircularProgressIndicator(), // Platzhalter während des Ladens
          errorWidget: (context, url, error) => const Icon(Icons
              .error), // Fehlerbild, wenn das Bild nicht geladen werden kann
          fit: BoxFit.cover, // Bildskalierung
          width: 300,
          height: 200,
        ),
        // Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(12),
        //     //   padding: const EdgeInsets.all(16.0),

        //     child: Image.network(
        //       urlToImage,
        //       loadingBuilder: (BuildContext context, Widget child,
        //           ImageChunkEvent? loadingProgress) {
        //         if (loadingProgress == null) {
        //           return child;
        //         } else {
        //           return const Center(
        //             child: CircularProgressIndicator(),
        //           );
        //         }
        //       },
        //     ),
        //   ),
        // ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
