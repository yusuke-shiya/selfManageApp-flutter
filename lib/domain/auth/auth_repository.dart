import 'package:self_manage_app/domain/auth/entity/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthRepository {
  Future<Auth> signIn(String email, String password);
  Future<Auth> signUp(String email, String password);
  Future<void> signOut();
  Stream<Auth?> get onAuthStateChanged;
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  throw UnimplementedError();
});
