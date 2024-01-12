import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:self_manage_app/domain/auth/entity/auth.dart';
import 'package:self_manage_app/domain/auth/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(this._firebaseAuth);

  @override
  Future<Auth> signIn(String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(credential.user);
  }

  @override
  Future<Auth> signUp(String email, String password) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(credential.user);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<String> get token async {
    return 'Bearer ${await _firebaseAuth.currentUser!.getIdToken()}';
  }

  Auth _userFromFirebase(firebase_auth.User? user) {
    if (user == null) {
      throw firebase_auth.FirebaseAuthException(
        code: 'USER_NOT_FOUND',
        message: 'User not found',
      );
    }
    return Auth(
        uid: user.uid, email: user.email!, name: user.displayName ?? "");
  }

  @override
  Stream<Auth?> get onAuthStateChanged {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }
}
