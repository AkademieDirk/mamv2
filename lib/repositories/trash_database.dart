import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:mamv2/repositories/trash_repository.dart';

class TrashDatabase implements TrashRepository {
  @override
  Future<List<List<dynamic>>> getAllTrashInformation() async {
    try {
      final rawData =
          await rootBundle.loadString("assets/sheets/abfallABCv1.csv");
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
