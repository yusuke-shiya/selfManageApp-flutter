import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';

class AuthUseCase {
  final UserRepository userRepository;

  AuthUseCase(this.userRepository);

  Future<User> signIn(String email, String password) async {
    return userRepository.signIn(email, password);
  }

  Future<User> signUp(String email, String password) async {
    return userRepository.signUp(email, password);
  }

  Future<void> signOut() async {
    await userRepository.signOut();
  }
}

final authUseCaseProvider = Provider<AuthUseCase>((ref) {
  return AuthUseCase(ref.read(userRepositoryProvider));
});
