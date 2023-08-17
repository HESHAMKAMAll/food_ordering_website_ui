import 'package:flutter/material.dart';
import 'package:food_ordering_website/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
