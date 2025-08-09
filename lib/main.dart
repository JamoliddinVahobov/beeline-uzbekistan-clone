import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beeline_uzbekistan_clone/bottomnavigationbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Beeline Uzbekistan Clone",
      home: Beeline(),
    );
  }
}
