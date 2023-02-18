import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prac/screens/home_screen.dart';
import 'package:prac/screens/login_screen.dart';

class Splash {
  void changesplash(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final user = _auth.currentUser;
    if (user != null) {
      Timer(
        const Duration(seconds: 10),
        (() {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }),
      );
    } else {
      Timer(
        const Duration(seconds: 3),
        (() {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        }),
      );
    }
  }
}
