import 'package:flutter/material.dart';
import 'package:mova/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(




      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    textTheme: const TextTheme(

      subtitle1: const TextStyle(
        color: Colors.white),
      ),
    ),
    
      home: const SplashScreen(),
    );
  }
}

  