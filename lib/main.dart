import 'package:flutter/material.dart';
import 'package:maskan/screens/about_us_screen.dart';
import 'package:maskan/screens/home_page_screen.dart';
import 'package:maskan/screens/login_admin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginAdminScreen(),
    );
  }
}



