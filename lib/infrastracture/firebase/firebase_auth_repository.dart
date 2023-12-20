import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';

class FirebaseAuthRepository implements UserRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(this._firebaseAuth);

  @override
  Future<User> signIn(String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(credential.user);
  }

  @override
  Future<User> signUp(String email, String password) async {
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

final firebaseAuthProvider = Provider<firebase_auth.FirebaseAuth>((ref) {
  return firebase_auth.FirebaseAuth.instance;
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return FirebaseAuthRepository(ref.read(firebaseAuthProvider));
});
