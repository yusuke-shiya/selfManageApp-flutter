import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/auth/entity/auth.dart';
import 'package:self_manage_app/application/usecase/auth/auth_usecase.dart';

// 認証状態を表すクラス
class AuthState {
  final Auth? auth;
  final bool isLoading;
  final String? error;

  AuthState({this.auth, this.isLoading = false, this.error});

  // ローディング状態にするためのファクトリコンストラクタ
  AuthState.loading() : this(isLoading: true);

  // エラー状態にするためのファクトリコンストラクタ
  AuthState.error(String error) : this(error: error);

  // ユーザーが設定されている状態にするためのファクトリコンストラクタ
  AuthState.authenticated(Auth auth) : this(auth: auth);
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
      final auth = await _authUseCase.signIn(email, password);
      state = AuthState.authenticated(auth);
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
      final auth = await _authUseCase.signUp(email, password);
      state = AuthState.authenticated(auth);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  // トークンを取得するロジック
  Future<String> get token async {
    return await _authUseCase.token;
  }
}
