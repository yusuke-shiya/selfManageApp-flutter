import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:self_manage_app/presentation/page/home_page.dart';
import 'package:self_manage_app/presentation/page/user/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // メッセージ表示用
  String infoText = '';
  // 入力したメールアドレス・パスワード
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.loose(Size(400, double.infinity)),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // メールアドレス入力
              TextFormField(
                decoration: InputDecoration(labelText: 'メールアドレス'),
                onChanged: (String value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              // パスワード入力
              TextFormField(
                decoration: InputDecoration(labelText: 'パスワード'),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              Container(
                padding: EdgeInsets.all(8),
                // メッセージ表示
                child: Text(infoText),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(double.maxFinite),
                ),
                onPressed: () async {
                  try {
                    // メール/パスワードでログイン
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    await auth.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    // ユーザー登録に成功した場合
                    setState(() {
                      infoText = "ログインに成功しました";
                    });
                    // ホーム画面に飛ばす
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }),
                    );
                  } catch (e) {
                    // ユーザー登録に失敗した場合
                    setState(() {
                      infoText = "ログインに失敗しました：${e.toString()}";
                    });
                  }
                },
                child: Text('ログイン'),
              ),
              Container(
                padding: EdgeInsets.all(8),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      }),
                    );
                  },
                  child: Text('登録はこちら'))
            ],
          ),
        ),
      ),
    );
  }
}