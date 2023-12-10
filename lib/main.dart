import 'package:self_manage_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:self_manage_app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'selfmanageapp',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
