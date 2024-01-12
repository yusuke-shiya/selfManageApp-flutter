import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/user/state/user_provider.dart';
import 'package:self_manage_app/presentation/page/user/signin_page.dart';
import 'package:self_manage_app/presentation/page/home_page.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';

class SignupPage extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態が更新された際の副作用
    ref.listen<AuthState>(authStateProvider, (_, state) async {
      // 画面が破棄されていたら何もしない
      if (!ModalRoute.of(context)!.isCurrent) return;
      // stateが更新されたら、状態に応じて処理を実行
      if (state.auth != null) {
        // backendにもユーザーを作成し、ホーム画面に遷移
        await ref.read(userProvider.notifier).create(
              _nameController.text,
              state.auth!.email,
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
    final userState = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('新規登録'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.loose(const Size(400, double.infinity)),
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: '名前'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '名前を入力してください';
                    }
                    return null;
                  },
                ),
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
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: authState.isLoading || userState.isLoading
                      ? null
                      : () async {
                          if (_formKey.currentState!.validate()) {
                            final email = _emailController.text;
                            final password = _passwordController.text;
                            await ref
                                .read(authStateProvider.notifier)
                                .signUp(email, password);
                          }
                        },
                  child: const Text('新規登録'),
                ),
                const SizedBox(height: 20),
                TextButton(
                  child: const Text('ログインはこちら'),
                  onPressed: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return SigninPage();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
