import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

import 'package:mamv2/models/user.dart';
import 'package:mamv2/repositories/database_repository.dart';

class CsvDatabase extends DatabaseRepository {
  void addNewTrashInformation(String abfallart, String entsorgung) {}

  Future<void> addNews() {
    throw UnimplementedError();
  }

  @override
  Future<bool> addUser(String newUserName, String newPassword) {
    throw UnimplementedError();
  }

  void deleteTrashInformation() {}

  Future<void> editNews() {
    throw UnimplementedError();
  }

  Future<void> editUser(User user) {
    throw UnimplementedError();
  }

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

  Future<List<User>> getAllUsers() {
    throw UnimplementedError();
  }

  Future<User?> getCurrentUser() {
    throw UnimplementedError();
  }

  Future<void> getNews() {
    throw UnimplementedError();
  }

  Future<bool> login({required String userName, required String password}) {
    throw UnimplementedError();
  }

  Future<void> logout() {
    throw UnimplementedError();
  }
}

@override
Future<List<User>> getAllUsers() {
  throw UnimplementedError();
}

@override
Future<User?> getCurrentUser() {
  throw UnimplementedError();
}

@override
Future<void> getNews() {
  throw UnimplementedError();
}

@override
Future<bool> login({required String userName, required String password}) {
  throw UnimplementedError();
}

@override
Future<void> logout() {
  throw UnimplementedError();
}
