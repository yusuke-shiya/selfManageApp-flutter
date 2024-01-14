import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_manage_app/presentation/page/expense/expense_page.dart';
import 'package:self_manage_app/presentation/page/expense/input_page.dart';
import 'package:self_manage_app/presentation/page/home_page.dart';
import 'package:self_manage_app/presentation/page/user/signin_page.dart';
import 'package:self_manage_app/presentation/page/user/signup_page.dart';

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.notoSansJpTextTheme(
      baseTheme.textTheme,
    ),
    primaryColor: Colors.blue,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/signin': (context) => SigninPage(),
        '/signup': (context) => SignupPage(),
        '/expense': (context) => const ExpensePage(),
        '/expense/input': (context) => const InputPage(),
      },
      title: '飲み会代管理app',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
    );
  }
}
