import 'package:flutter/material.dart';
import 'screens/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'শিম অ্যাপ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'NotoSansBengali',
      ),
      home: const WelcomeScreen(),
    );
  }
}
