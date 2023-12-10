import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:self_manage_app/pages/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool is_login = false;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    // ログイン状態を確認
    final User? user = auth.currentUser;

    // ログインしていない場合は、ログインページに飛ばす
    Future(() {
      if (user == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return LoginPage();
          }),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(auth.currentUser?.email != null
                ? 'email: ${auth.currentUser?.email}'
                : 'ログインしていません'),
            SizedBox(height: 10),
            Text(auth.currentUser?.uid != null
                ? 'UID: ${auth.currentUser?.uid}'
                : 'ログインしていません'),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  auth.currentUser?.getIdToken(true).then((value) {
                    print('トークンはこれだ！');
                    print(value);
                  });
                },
                child: Text('トークン発行！')),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('ログアウト'),
              onPressed: () async {
                await auth.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
