import 'package:mamv2/models/user.dart';
import 'package:mamv2/features/login_registration/user_repository.dart';

class UserDataBase implements UserRepository {
  final List<AppUser> _users = [
    AppUser(userName: " Dirk", password: "1234"),
  ];
  AppUser? _currentUser;
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
  Future<List<AppUser>> getAllUsers() {
    return Future.value(_users);
  }

  @override
  Future<AppUser?> getCurrentUser() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => _currentUser,
    );
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
