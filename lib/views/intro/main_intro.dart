import 'package:flutter/material.dart';
import 'package:foode/views/home/home.dart';

class MainIntroScreen extends StatefulWidget {
  const MainIntroScreen({super.key});

  @override
  State<MainIntroScreen> createState() => _MainIntroScreenState();
}

class _MainIntroScreenState extends State<MainIntroScreen> {
  @override
  void didChangeDependencies() {
    Future.delayed(
      const Duration(seconds: 5),
    ).then(
            (value) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        ),);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/main_intro.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 428,
              height: 396,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
              child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Welcome to \n    Foodu 👋",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Lorem asdoiausdoiu aoiudoi uasodu oiasudoi uasoidu oiasdu oiaduoi audoiduasduoia ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
