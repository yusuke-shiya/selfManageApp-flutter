import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';

class UserUseCase {
  final UserRepository userRepository;

  UserUseCase(this.userRepository);

  Future<User> create(String name, String email, String token) async {
    return await userRepository.create(
      name,
      email,
      token,
    );
  }
}

final userUseCaseProvider = Provider<UserUseCase>((ref) {
  return UserUseCase(ref.read(userRepositoryProvider));
});
