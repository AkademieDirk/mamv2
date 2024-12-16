import 'package:firebase_auth/firebase_auth.dart';

import 'package:mamv2/features/login_registration/repositorys/user_repository.dart';
import 'package:mamv2/models/user.dart';

class UserAuthRepository extends UserRepository {
  @override
  Future<bool> signUserIn({
    required String eMail,
    required String password,
  }) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: eMail, password: password);

    return true;
  }

  @override
  Future<bool> addUser(String newUserName, String newPassword) {
    // TODO: implement addUser
    throw UnimplementedError();
  }

  @override
  Future<void> editUser(AppUser user) {
    // TODO: implement editUser
    throw UnimplementedError();
  }

  @override
  Future<List<AppUser>> getAllUsers() {
    // TODO: implement getAllUsers
    throw UnimplementedError();
  }

  @override
  Future<AppUser?> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
