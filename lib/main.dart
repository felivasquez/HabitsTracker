import 'package:habitstracker/getstarted/getstarted.dart';
import 'package:flutter/material.dart';
//import 'package:habitstracker/login-signin/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ColumnExample(),
      ),
    );
  }
}
