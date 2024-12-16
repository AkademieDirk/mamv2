import 'package:mamv2/models/user.dart';

abstract class UserRepository {
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
}
