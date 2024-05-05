import 'package:flutter/material.dart';
import 'package:tree/home_layout/home_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_layout(),
      debugShowCheckedModeBanner: false, // This line hides the debug banner
    );
  }
}