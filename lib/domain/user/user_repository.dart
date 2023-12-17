import 'package:self_manage_app/domain/user/entity/user.dart';

abstract class AuthRepository {
  Future<User> signIn(String email, String password);
  Future<User> signUp(String email, String password);
  Future<void> signOut();
  Stream<User?> get onAuthStateChanged;
}
