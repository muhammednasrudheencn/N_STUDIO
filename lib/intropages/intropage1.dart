import 'dart:ui';

import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

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
                      color: Color.fromARGB(255, 52, 15, 73))),
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
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'To',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Image(image: AssetImage('assets/N_STUDIO-removebg-preview.png'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
