import 'package:mamv2/models/news.dart';
import 'package:mamv2/repositories/news_repository.dart';

class NewsDatabase implements NewsRepository {
  final List<News> newsList = [
    News(
        title: "Nachricht 1",
        description: "Nachrichtentext 1",
        urlToImage: "assets/images/News/NewsLoekampstr.jpg")
  ];

  @override
  Future<void> addNews() {
    throw UnimplementedError();
  }

  @override
  Future<void> getNews() async {}
}
