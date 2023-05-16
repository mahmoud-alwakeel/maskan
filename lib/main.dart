import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:maskan/layout/home_layout.dart';
import 'package:maskan/screens/about_us_screen.dart';
import 'package:maskan/screens/home_page_screen.dart';
import 'package:maskan/screens/login_admin_screen.dart';
import 'package:maskan/screens/properties_screen.dart';
import 'package:http/http.dart' as http;
import 'package:maskan/shared/bloc_observer.dart';
import 'package:maskan/shared/network/remote/dio_helper.dart';
import 'package:maskan/shared/network/remote/api_service.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  HttpOverrides.global = MyHttpOverrides();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  //Uri myUrl = Uri.parse('https://localhost:7046/');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const HomePageScreen(),
        '/about': (context) => const AboutUsScreen(),
        '/properties': (context) => const PropertiesScreen(),
        '/loginAdmin': (context) => const LoginAdminScreen(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[200],
          titleTextStyle: const TextStyle(
            color: Colors.black,
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.grey[200],
          elevation: 40.0,
          type: BottomNavigationBarType.fixed
        ),
        scaffoldBackgroundColor: Colors.white,

        primarySwatch: Colors.blue,
      ),
      home: HomeLayout(),
    );
  }
}
