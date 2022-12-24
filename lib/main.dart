import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sneakers_app/home_page_WideLayout/login_page.dart';
import 'home_page_WideLayout/splash screen.dart';
import 'home_pages_UltraWideLayout/splash screen.dart';

void main() async {
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: ((context, constraints) {
          if (constraints.maxWidth >= 380) {
            return const SplashScreenUltra();
          }
          if (constraints.maxWidth >= 360) {
            return const SplashScreenWide();
          } else {
            return const LoginPage();
          }
        }),
      ),
    );
  }
}
