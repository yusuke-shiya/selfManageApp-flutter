import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UserRepository {
  Future<User> create(String name, String email, String token);
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  throw UnimplementedError();
});
