import 'package:mamv2/models/user.dart';

abstract class DatabaseRepository {
  // Hier sind die Methoden für das Trash ABC
  //!--------------------------------------------------------
  // void addNewTrashInformation(
  //   String abfallart,
  //   String entsorgung,
  // );
//  Future<List<List<dynamic>>> getAllTrashInformation();

//!--------------------------------------------------------
  // Hier alle Methoden zu den Usern

  Future<List<AppUser>> getAllUsers();
  Future<bool> addUser(String newUserName, String newPassword);
  Future<void> editUser(AppUser user);

  Future<bool> login({
    required String userName,
    required String password,
  });
  Future<void> logout();
  Future<AppUser?> getCurrentUser();

//!-------------------------------------------------------

// Hier die Methoden zu den News
  // Future<void> addNews();
  // Future<void> editNews();
  Future<void> getNews();

  //!-----------------------------------------------------
}
