import 'package:flutter/material.dart';
import 'package:foode/views/intro/main_intro.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    Future.delayed(
      Duration(seconds: 2),
    ).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainIntroScreen(),
        ),
      ),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 350,
          ),
          Center(
              child: Image.asset(
            "assets/logo.png",
            width: 260,
            height: 85,
          )),
          const SizedBox(
            height: 150,
          ),
          Lottie.asset(
            "assets/animations/loading.json",
            width: 100,
          ),
        ],
      ),
    );
  }
}
