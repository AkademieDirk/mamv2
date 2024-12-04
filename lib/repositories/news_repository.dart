abstract class NewsRepository {
  @override
  Future<void> getNews() async {}

  @override
  Future<void> addNews() {
    throw UnimplementedError();
  }
}
