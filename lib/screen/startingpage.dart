import 'package:flutter/material.dart';
import 'package:n_studio/intropages/intropage1.dart';
import 'package:n_studio/intropages/intropage2.dart';
import 'package:n_studio/intropages/intropage3.dart';

import 'package:n_studio/screen/login.dart';
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
    final csize = MediaQuery.of(context).size;

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
                  child: Container(
                    width: csize.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.skip_next_rounded,
                      size: 30,
                      // style: TextStyle(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white),
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.white, activeDotColor: Colors.white),
                ),
                lastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const LoginScreen()));
                        },
                        child: Container(
                          width: csize.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.done_rounded,
                            size: 30,
                            // style: TextStyle(
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.white),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          width: csize.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.navigate_next_rounded,
                            size: 30,
                            // style: TextStyle(
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.white),
                          ),
                        ),
                      ),
              ],
            ))
      ],
    );
  }
}
