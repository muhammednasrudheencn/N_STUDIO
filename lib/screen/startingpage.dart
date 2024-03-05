import 'package:flutter/material.dart';
import 'package:n_studio/intropages/intropage1.dart';
import 'package:n_studio/intropages/intropage2.dart';
import 'package:n_studio/intropages/intropage3.dart';
import 'package:n_studio/screen/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              lastpage = (index == 2);
            });
          },
          children: const [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.jumpToPage(2);
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(),
                ),
                lastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const HomeScreen()));
                        },
                        child: const Text(
                          'DONE',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
              ],
            ))
      ],
    );
  }
}
