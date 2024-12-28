import 'package:flutter/material.dart';
import 'package:moody/theme/theme.dart';
import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moody',
      debugShowCheckedModeBanner: false,
      theme:MyTheme.myThemeDate,
      home: const HomeScreen(),
    );
  }
}

