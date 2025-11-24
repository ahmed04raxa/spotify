import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';
import 'package:spotifyuiclone/ui/intro/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          child: Image.asset(
            "assets/images/Logo.png",
            width: 80,
            height: 80,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
