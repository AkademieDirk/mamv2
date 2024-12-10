import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:mamv2/features/abfall_abc/repository/trash_repository.dart';

List<Map<String, String>> trashList = <Map<String, String>>[
  {
    "Abfallart": "Abbeizmittel",
    "Entsorgung":
        "unentleert gehört es in den Sondermüll. Restlos entleerte Behälter gehören in die gelbe Tonne. ",
  }
];
Future<List<Map<String, String>>> getTrashList() async {
  await Future.delayed(const Duration(seconds: 3));
  return trashList;
}

class TrashDatabase implements TrashRepository {
  @override
  Future<List<List<dynamic>>> getAllTrashInformation() async {
    try {
      final rawData = await rootBundle.loadString(
          "assets/sheets/abfallABCv1.csv"); // Die selbst erstellte  Liste mit Daten
      List<List<dynamic>> listData =
          const CsvToListConverter().convert(rawData, fieldDelimiter: ";");

      // Nur Zeilen mit mindestens 5 Spalten speichern
      return listData;
    } catch (e) {
      return [];
    }
  }

  @override
  void deleteTrashInformation() {}
}
