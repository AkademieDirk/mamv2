abstract class NewsRepository {
  Future<void> getNews() async {}

  Future<void> addNews() {
    throw UnimplementedError();
  }
}
