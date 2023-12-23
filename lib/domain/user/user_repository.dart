import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UserRepository {
  Future<User> signIn(String email, String password);
  Future<User> signUp(String email, String password);
  Future<void> signOut();
  Stream<User?> get onAuthStateChanged;
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  throw UnimplementedError();
});
