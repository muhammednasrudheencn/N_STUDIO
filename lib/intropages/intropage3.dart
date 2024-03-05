import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final csize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: csize.height * 0.3,
                  width: csize.width,
                  decoration: const BoxDecoration(
                      // shape: BoxShape.circle,
                      color: Color.fromARGB(255, 54, 28, 83))),
              Container(
                  height: csize.height * 0.4,
                  width: csize.width,
                  decoration: const BoxDecoration(
                      // shape: BoxShape.circle,
                      color: Color.fromARGB(255, 31, 30, 32))),
              Container(
                  height: csize.height * 0.3,
                  width: csize.width,
                  decoration: const BoxDecoration(
                      // shape: BoxShape.circle,
                      color: Color.fromARGB(255, 63, 35, 95)))
            ],
          ),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                color: Colors.transparent,
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('animation/Animation - 1709631517501.json',
                      height: csize.height * 0.3, reverse: true, repeat: true),
                  const SizedBox(height: 20),
                  const Text(
                    'N STUDIO',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'We have some special!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'for you Creativity',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
