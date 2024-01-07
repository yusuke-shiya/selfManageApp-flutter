import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';
import 'package:self_manage_app/infrastracture/api/user_api_client.dart';

class FirebaseAuthRepository implements UserRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(this._firebaseAuth);

  @override
  Future<User> signIn(String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // 試しにtokenを取得してuser_api_clientのcreateUserを呼び出してみる
    final token = 'Bearer ${await credential.user!.getIdToken()}';
    final name = 'test name';
    try {
      final user = await UserApiClient().createUser(name, email, token);
    } catch (e) {
      print('error');
      print(e);
    }
    return _userFromFirebase(credential.user);
  }

  @override
  Future<User> signUp(String email, String password) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // 試しにtokenを取得してuser_api_clientのcreateUserを呼び出してみる
    final token = 'Bearer ${await credential.user!.getIdToken()}';
    final name = 'test name';
    try {
      final user = await UserApiClient().createUser(name, email, token);
    } catch (e) {
      print('error');
      print(e);
    }
    return _userFromFirebase(credential.user);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  User _userFromFirebase(firebase_auth.User? user) {
    if (user == null) {
      throw firebase_auth.FirebaseAuthException(
        code: 'USER_NOT_FOUND',
        message: 'User not found',
      );
    }
    return User(
        uid: user.uid, email: user.email!, name: user.displayName ?? "");
  }

  @override
  Stream<User?> get onAuthStateChanged {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }
}
