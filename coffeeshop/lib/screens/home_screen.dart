import 'package:coffeeshop/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF212325),
      ),
      home: WelcomeScreen(),
    );
  }
}
