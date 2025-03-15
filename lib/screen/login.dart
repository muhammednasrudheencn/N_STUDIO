import 'package:flutter/material.dart';

import '../constFiles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var isRegister = false;

  @override
  Widget build(BuildContext context) {
    final csize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: csize.height * 0.01,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: isRegister ? Colors.white : themeColor,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: (BorderRadius.circular(20)),
                  color: isRegister ? themeColor : Colors.white,
                ),
                width: csize.width * 0.20,
                height: csize.height * 0.05,
                child: Icon(
                  Icons.policy_outlined,
                  size: 28,
                  color: isRegister ? Colors.white : Colors.black,
                ),
              ),
              GestureDetector(
                onTap: isRegister
                    ? () {
                        setState(() {
                          isRegister = false;
                        });
                      }
                    : () {
                        setState(() {
                          isRegister = true;
                        });
                      },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: (BorderRadius.circular(20)),
                    color: isRegister ? themeColor : Colors.white,
                  ),
                  width: csize.width * 0.4,
                  height: csize.height * 0.05,
                  alignment: Alignment.center,
                  child: isRegister
                      ? const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      : const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: (BorderRadius.circular(20)),
                  color: isRegister ? themeColor : Colors.white,
                ),
                width: csize.width * 0.20,
                height: csize.height * 0.05,
                child: Icon(
                  Icons.question_mark_rounded,
                  size: 28,
                  color: isRegister ? Colors.white : Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
