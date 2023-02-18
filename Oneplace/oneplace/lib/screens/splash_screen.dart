import 'package:flutter/material.dart';
import 'package:prac/splash.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Splash s = Splash();
  @override
  void initState() {
    super.initState();
    s.changesplash(context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: GradientText("Oneplace",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            colors: [Color(0xFF0050AC), Color(0xFF9354B9)]),
      ),
    );
  }
}
