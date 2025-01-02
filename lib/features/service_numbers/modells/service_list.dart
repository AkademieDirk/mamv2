import 'dart:math';
import 'dart:ui';

class ServiceList {
  List<Map<String, String>> getServiceList() {
    return [
      {'service': 'Bürgerbüro', 'phone': '02365 99-1234'},
      {'service': 'Kfz-Zulassungsstelle', 'phone': '02365 99-1250'},
      {'service': 'Standesamt', 'phone': '02365 99-1223'},
      {'service': 'Ordnungsamt', 'phone': '02365 99-1260'},
      {'service': 'Müllabfuhr / Abfallwirtschaft', 'phone': '02365 99-1350'},
      {'service': 'Stadtbibliothek', 'phone': '02365 99-1300'},
      {'service': 'Ausländerbehörde', 'phone': '02365 99-1230'},
      {'service': 'Sozialamt / Jugendamt', 'phone': '02365 99-1280'},
      {'service': 'Stadtplanung und Bauordnung', 'phone': '02365 99-1240'},
      {
        'service': 'Notrufnummer Feuerwehr / Rettung',
        'phone': '112 (allgemeine Notrufnummer)'
      },
    ];
  }
}

Color getRandomColor() {
  final random = Random();

  int red = random.nextInt(81) + 100; // R-Wert (0-255)
  int green = random.nextInt(81) + 100; // G-Wert (0-255)
  int blue = 0;
  // Alpha-Wert hiermit wird gesagt vollkommen undurchsichtig
  return Color.fromRGBO(red, green, blue, 1.0);
}
