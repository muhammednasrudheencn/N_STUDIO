import 'package:flutter/material.dart';
import 'package:n_studio/login/register.dart';
import 'package:n_studio/screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N STUDIO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Prompt',
      ),
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(),
    );
  }
}
