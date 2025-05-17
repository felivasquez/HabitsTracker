import 'package:firebase_core/firebase_core.dart';
import 'package:habitstracker/firebase_options.dart';
import 'package:habitstracker/getstarted/getstarted.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
