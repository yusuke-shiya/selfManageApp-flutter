import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:self_manage_app/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'selfmanageapp-74941',
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
      home: HomePage(),
    );
  }
}

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
