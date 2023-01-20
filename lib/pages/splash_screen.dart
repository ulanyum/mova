import 'package:flutter/material.dart';
import 'package:mova/pages/welcome_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push( context, MaterialPageRoute(builder: (context) => WelcomeScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: Color.fromARGB(255, 25, 26, 32),
            ),
            SizedBox(
              height: 250,
            ),
            Image.asset(
              "images/pngwing.png",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 150,
            ),
            CircularProgressIndicator(
              color: Colors.redAccent,
            ),
          ],
        )
      ],
    );
  }
}
