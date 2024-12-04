import 'package:mamv2/models/user.dart';
import 'package:mamv2/repositories/user_repository.dart';

class UserDataBase implements UserRepository {
  final List<User> _users = [
    User(userName: " Dirk", password: "1234"),
  ];
  User? _currentUser;
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
  Future<List<User>> getAllUsers() {
    return Future.value(_users);
  }

  @override
  Future<User?> getCurrentUser() {
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
