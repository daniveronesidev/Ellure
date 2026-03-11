import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const EllureApp());
}

class EllureApp extends StatelessWidget {
  const EllureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ellure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}
