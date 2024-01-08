import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';
import 'package:self_manage_app/application/usecase/user/state/user_provider.dart';
import 'package:self_manage_app/presentation/page/home_page.dart';
import 'package:self_manage_app/presentation/page/user/signup_page.dart';

class SigninPage extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態が更新された際の副作用
    ref.listen<AuthState>(authStateProvider, (_, state) async {
      if (state.auth != null) {
        // backendからユーザー情報を取得し、ホーム画面に遷移
        await ref.read(userStateProvider.notifier).get(
              await ref.read(authStateProvider.notifier).token,
            );
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else if (state.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.error!)),
        );
      }
    });
    // stateProviderを読み込む
    final authState = ref.watch(authStateProvider);
    final userState = ref.watch(userStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.loose(Size(400, double.infinity)),
          padding: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'メールアドレス'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'メールアドレスを入力してください';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'パスワード'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'パスワードを入力してください';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: authState.isLoading || userState.isLoading
                      ? null
                      : () async {
                          if (_formKey.currentState!.validate()) {
                            final email = _emailController.text;
                            final password = _passwordController.text;
                            // AuthStateNotifierを通じてサインイン処理を実行
                            await ref
                                .read(authStateProvider.notifier)
                                .signIn(email, password);
                          }
                        },
                  child: const Text('ログイン'),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignupPage())),
                  child: Text('登録はこちら'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
