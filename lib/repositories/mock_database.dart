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
  Future<User?> getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> getNews() {
    throw UnimplementedError();
  }

  @override
  Future<void> editUser(User user) {
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getAllUsers() {
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
final List<User> _users = [
  User(userName: " Dirk", password: "1234"),
];
User? _currentUser;

@override
void deleteTrashInformation() {}

@override
Future<List<User>> getAllUsers() {
  return Future.value(_users);
}

@override
Future<bool> addUser(String newUserName, String newPassword) {
  // Überprüfen, ob es den User schon gibt.
  for (User user in _users) {
    if (newUserName == user.userName) {
      return Future.value(false);
    }
  }
  User newUser = User(userName: newUserName, password: newPassword);
  _users.add(newUser);

  return Future.delayed(const Duration(seconds: 1), () => true);
}

@override
Future<void> editUser(User user) {
  throw UnimplementedError();
}

@override
Future<User?> getCurrentUser() {
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
