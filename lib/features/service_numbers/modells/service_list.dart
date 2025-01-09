import 'dart:math';
import 'dart:ui';

class ServiceList {
  List<Map<String, String>> getServiceList() {
    return [
      {
        'service': 'Bürgerbüro',
        'phone': '02365 99-1234',
        'address': 'Bergstraße 228 -230, 45678 Marl'
      },
      {
        'service': 'Kfz-Zulassungsstelle',
        'phone': '02365 99-1250',
        'address': 'Stettiner Str. 10 , 45770 Marl'
      },
      {
        'service': 'Standesamt',
        'phone': '02365 99-1223',
        'address': 'Friedrichstraße 12, 45678 Stadt'
      },
      {
        'service': 'Ordnungsamt',
        'phone': '02365 99-1260',
        'address': 'Bürgerstraße 5, 45678 Stadt'
      },
      {
        'service': 'Müllabfuhr / Abfallwirtschaft',
        'phone': '02365 99-1350',
        'address': 'Industriestraße 8, 45678 Stadt'
      },
      {
        'service': 'Stadtbibliothek',
        'phone': '02365 99-1300',
        'address': 'Leserstraße 4, 45678 Stadt'
      },
      {
        'service': 'Ausländerbehörde',
        'phone': '02365 99-1230',
        'address': 'Visastraße 2, 45678 Stadt'
      },
      {
        'service': 'Sozialamt / Jugendamt',
        'phone': '02365 99-1280',
        'address': 'Wohlfahrtsstraße 7, 45678 Stadt'
      },
      {
        'service': 'Stadtplanung und Bauordnung',
        'phone': '02365 99-1240',
        'address': 'Planstraße 10, 45678 Stadt',
      },
      {
        'service': 'Notrufnummer Feuerwehr / Rettung',
        'phone': '112 (Feuerwehr), 110 (Polizei)',
        'address': 'Notrufnummer'
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
