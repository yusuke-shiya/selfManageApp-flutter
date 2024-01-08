import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/auth/entity/auth.dart';
import 'package:self_manage_app/domain/auth/auth_repository.dart';

class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase(this.authRepository);

  Future<Auth> signIn(String email, String password) async {
    return authRepository.signIn(email, password);
  }

  Future<Auth> signUp(String email, String password) async {
    return authRepository.signUp(email, password);
  }

  Future<void> signOut() async {
    await authRepository.signOut();
  }
}

final authUseCaseProvider = Provider<AuthUseCase>((ref) {
  return AuthUseCase(ref.read(authRepositoryProvider));
});
