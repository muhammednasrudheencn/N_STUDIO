// ignore_for_file: use_build_context_synchronously

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:n_studio/screen/startingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final csize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: csize.height,
        child: Stack(
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
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/N_STUDIO-removebg-preview.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> startApp() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => const StartingScreen()));
  }
}
