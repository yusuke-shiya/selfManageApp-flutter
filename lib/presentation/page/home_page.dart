import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';
import 'package:self_manage_app/application/usecase/user/state/user_provider.dart';
import 'package:self_manage_app/presentation/page/expense/expense_page.dart';
import 'package:self_manage_app/presentation/page/user/signin_page.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final userState = ref.watch(userProvider);
    // ログインしていない場合はログイン画面に遷移
    if (!authState.isLoading && authState.auth == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacementNamed('/signin');
      });
    }
    // TODO: ダサいので後で直す
    else if (!userState.isLoading && userState.asData?.value.userUuid != '') {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacementNamed('/expense');
      });
    }

    // ログインできたが、ユーザー情報が取得できていない場合はローディングを表示
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
