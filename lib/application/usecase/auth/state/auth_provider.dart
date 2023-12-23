import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/application/usecase/auth/auth_usecase.dart';

// 認証状態を表すクラス
class AuthState {
  final User? user;
  final bool isLoading;
  final String? error;

  AuthState({this.user, this.isLoading = false, this.error});

  // ローディング状態にするためのファクトリコンストラクタ
  AuthState.loading() : this(isLoading: true);

  // エラー状態にするためのファクトリコンストラクタ
  AuthState.error(String error) : this(error: error);

  // ユーザーが設定されている状態にするためのファクトリコンストラクタ
  AuthState.authenticated(User user) : this(user: user);
}

// 認証状態を管理するプロバイダ
final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final authUseCase = ref.read(authUseCaseProvider);
  return AuthStateNotifier(authUseCase);
});

// StateNotifierを継承したクラスで状態のロジックを扱う
class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthUseCase _authUseCase;

  AuthStateNotifier(this._authUseCase) : super(AuthState());

  // サインインのロジック
  Future<void> signIn(String email, String password) async {
    try {
      state = AuthState.loading();
      final user = await _authUseCase.signIn(email, password);
      state = AuthState.authenticated(user);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  // サインアウトのロジック
  Future<void> signOut() async {
    try {
      await _authUseCase.signOut();
      state = AuthState();
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  // サインアップのロジック
  Future<void> signUp(String email, String password) async {
    try {
      state = AuthState.loading();
      final user = await _authUseCase.signUp(email, password);
      state = AuthState.authenticated(user);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }
}
