import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/application/usecase/user/user_usecase.dart';

// ユーザー情報を管理するクラス
class UserState {
  final User? user;
  final String? error;

  UserState({this.user, this.error});

  // ユーザーを取得した状態にするためのファクトリコンストラクタ
  UserState.user(User user) : this(user: user);

  // エラーがある状態にするためのファクトリコンストラクタ
  UserState.error(String error) : this(error: error);
}

// ユーザー情報を管理するプロバイダ
final userStateProvider =
    StateNotifierProvider<UserStateNotifier, UserState>((ref) {
  final userUseCase = ref.read(userUseCaseProvider);
  return UserStateNotifier(userUseCase);
});

// StateNotifierを継承したクラスで状態のロジックを扱う
class UserStateNotifier extends StateNotifier<UserState> {
  final UserUseCase _userUseCase;

  UserStateNotifier(this._userUseCase) : super(UserState());

  // ユーザー作成のロジック
  Future<void> create(String name, String email, String token) async {
    try {
      UserState.user(await _userUseCase.create(name, email, token));
    } catch (e) {
      state = UserState.error(e.toString());
    }
  }
}
