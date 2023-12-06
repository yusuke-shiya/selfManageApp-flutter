import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:self_manage_app/LoginPage.dart';
import 'package:self_manage_app/RegisterPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDk2jdkpIVrtmpNAScUQrGA5m81yB7kf_E",
      authDomain: "selfmanageapp-74941.firebaseapp.com",
      projectId: "selfmanageapp-74941",
      storageBucket: "selfmanageapp-74941.appspot.com",
      messagingSenderId: "738106322860",
      appId: "1:738106322860:web:9c6e91e2b6dd66ffcf1409",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('ログイン'),
              onPressed: () async {
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),
                );
              },
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              child: Text('アカウント作成'),
              onPressed: () async {
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return RegisterPage();
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
