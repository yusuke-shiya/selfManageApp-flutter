import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';
import 'package:self_manage_app/presentation/page/user/signin_page.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    // ログインしていない場合はログイン画面に遷移
    if (authState.auth == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SigninPage()),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(authState.auth?.email != null
                ? 'email: ${authState.auth?.email}'
                : 'ログインしていません'),
            SizedBox(height: 10),
            Text(authState.auth?.uid != null
                ? 'UID: ${authState.auth?.uid}'
                : 'ログインしていません'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('ログアウト'),
              onPressed: () async {
                await ref.read(authStateProvider.notifier).signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SigninPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
