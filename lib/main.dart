import 'package:flutter/material.dart';
import 'package:beeline_uzbekistan_clone/bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Beeline(),
      debugShowCheckedModeBanner: true,
    );
  }
}
