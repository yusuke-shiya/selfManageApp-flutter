import 'package:flutter/material.dart';
import 'package:self_manage_app/presentation/page/expense/expense_page.dart';
import 'package:self_manage_app/presentation/page/expense/input_page.dart';
import 'package:self_manage_app/presentation/page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/expense': (context) => const ExpensePage(),
        '/expense/input': (context) => const InputPage(),
      },
      title: '飲み会代管理app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
