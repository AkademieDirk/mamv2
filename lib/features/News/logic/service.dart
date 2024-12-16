import 'package:url_launcher/url_launcher.dart';

class NewsService {
  static Future<void> launchUrlA({required String url}) async {
    final Uri urla = Uri.parse(url);
    if (!await launchUrl(urla)) {
      throw Exception("Seite konnte nicht geladen werden $urla");
    }
  }
}
