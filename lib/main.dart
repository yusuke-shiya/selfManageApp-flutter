import 'package:self_manage_app/domain/expense/expense_repository.dart';
import 'package:self_manage_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:self_manage_app/infrastracture/api/expense_api_repository.dart';
import 'package:self_manage_app/presentation/page/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/auth/auth_repository.dart';
import 'package:self_manage_app/infrastracture/firebase/firebase_auth_repository.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';
import 'package:self_manage_app/infrastracture/api/user_api_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'selfmanageapp',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ProviderScope(
      overrides: [
        authRepositoryProvider.overrideWithValue(
          FirebaseAuthRepository(
            FirebaseAuth.instance,
          ),
        ),
        userRepositoryProvider.overrideWithValue(
          UserApiRepository(),
        ),
        expenseRepositoryProvider.overrideWithValue(
          ExpenseApiRepository(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
