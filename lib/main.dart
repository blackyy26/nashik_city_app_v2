import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const NashikApp());
}

class NashikApp extends StatelessWidget {
  const NashikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nashik City App',
      home: const LoginScreen(),
    );
  }
}
