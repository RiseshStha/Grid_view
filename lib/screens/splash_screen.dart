import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                textAlign: TextAlign.center,
                "Welcome Risesh Sama Shrestha",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
