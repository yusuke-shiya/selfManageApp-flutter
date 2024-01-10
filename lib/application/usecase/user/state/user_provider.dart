import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/user/user_usecase.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';

final userProvider =
    AsyncNotifierProvider<UserNotifier, User>(UserNotifier.new);

class UserNotifier extends AsyncNotifier<User> {
  @override
  User build() {
    return const User(
      userUuid: '',
      email: '',
      name: '',
    );
  }

  Future<void> get(String token) async {
    state = const AsyncValue.loading();
    try {
      final user = await ref.read(userUseCaseProvider).get(token);
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> create(String name, String email, String token) async {
    state = const AsyncValue.loading();
    try {
      final user =
          await ref.read(userUseCaseProvider).create(name, email, token);
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
