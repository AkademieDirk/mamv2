import 'package:mamv2/repositories/news_repository.dart';

class NewsDatabase implements NewsRepository {
  @override
  Future<void> addNews() {
    throw UnimplementedError();
  }

  @override
  Future<void> getNews() async {}
}
