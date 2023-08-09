import 'package:flutter/material.dart';
import 'package:foode/views/home/home.dart';
import 'package:foode/views/intro/intro/intro_one_screen.dart';
import 'package:foode/views/intro/intro/intro_three_screen.dart';
import 'package:foode/views/intro/intro/intro_two_screen.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController controller = PageController();
  int endPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              endPage = value;
            },
            controller: controller,
            children: const [
              IntroOneScreen(),
              IntroTwoScreen(),
              IntroThreeScreen(),
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                        dotColor: Colors.green, activeDotColor: Colors.green),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (endPage == 2) {
                        Get.to(const HomeScreen());
                      } else {
                        controller.nextPage(
                            duration: const Duration(
                              milliseconds: 500,
                            ),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Container(
                      alignment: const Alignment(1, 1),
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: endPage == 2
                            ? const Text(
                                "Done",
                                style: TextStyle(color: Colors.white),
                              )
                            : const Text(
                                "Next",
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
