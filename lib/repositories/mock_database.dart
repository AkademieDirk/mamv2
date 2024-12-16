// ignore_for_file: prefer_const_constructors, unused_element

import 'dart:async';

import 'package:mamv2/models/user.dart';
import 'package:mamv2/repositories/database_repository.dart';

class MockDatabase implements DatabaseRepository {
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

  @override
  Future<bool> addUser(String newUserName, String newPassword) {
    throw UnimplementedError();
  }

  @override
  Future<AppUser?> getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> getNews() {
    throw UnimplementedError();
  }

  @override
  Future<void> editUser(AppUser user) {
    throw UnimplementedError();
  }

  @override
  Future<List<AppUser>> getAllUsers() {
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
}

// Liste mit Usern
final List<AppUser> _users = [
  AppUser(userName: " Dirk", password: "1234"),
];
AppUser? _currentUser;

@override
void deleteTrashInformation() {}

@override
Future<List<AppUser>> getAllUsers() {
  return Future.value(_users);
}

@override
Future<bool> addUser(String newUserName, String newPassword) {
  // Überprüfen, ob es den User schon gibt.
  for (AppUser user in _users) {
    if (newUserName == user.userName) {
      return Future.value(false);
    }
  }
  AppUser newUser = AppUser(userName: newUserName, password: newPassword);
  _users.add(newUser);

  return Future.delayed(const Duration(seconds: 1), () => true);
}

@override
Future<void> editUser(AppUser user) {
  throw UnimplementedError();
}

@override
Future<AppUser?> getCurrentUser() {
  return Future.delayed(
    const Duration(seconds: 1),
    () => _currentUser,
  );
}

@override
Future<void> addNews() {
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

@override
Future<void> getNews() async {}

@override
Future<List<List>> getAllTrashInformation() {
  throw UnimplementedError();
}
