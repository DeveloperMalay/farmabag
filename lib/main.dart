import 'package:flutter/material.dart';
import 'package:pharmabag/utils/custom_theme.dart';
import 'package:pharmabag/view/signup/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.getTheme(),
      home: const SignUpScreen(),
    );
  }
}
