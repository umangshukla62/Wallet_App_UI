import 'package:flutter/material.dart';
import 'package:test/Screen/Homescreen.dart';
import 'package:test/Screen/Statistics.dart';
import 'package:test/Widgets/add_card.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
