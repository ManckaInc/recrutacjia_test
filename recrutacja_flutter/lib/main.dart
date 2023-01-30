import 'package:flutter/material.dart';
import 'package:recrutacja_flutter/screens/brand_screen.dart';
import 'package:recrutacja_flutter/screens/image_screen.dart';
import 'package:recrutacja_flutter/screens/login_screen.dart';
import 'package:recrutacja_flutter/screens/welcome_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Hive.initFlutter();
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        BrandsScreen.id:(context) => BrandsScreen(),
        ImageScreen.id: (context) => ImageScreen(nameBrand: ' ',),
      },
    );
  }
}