import 'package:animations_flutter/screens/login/home/home_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animations Intro',
      debugShowCheckedModeBanner: false,
      home: HomeScreens(),
    );
  }
}
