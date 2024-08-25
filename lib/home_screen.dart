import 'package:beeline_uzbekistan_clone/balans_va_qoldiqlar.dart';
import 'package:beeline_uzbekistan_clone/beees_class.dart';
import 'package:beeline_uzbekistan_clone/ommabop_containers.dart';
import 'package:beeline_uzbekistan_clone/promotions.dart';
import 'package:beeline_uzbekistan_clone/thelist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onSnackbarTap;

  const HomeScreen({super.key, required this.onSnackbarTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 600,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.blue,
                    Colors.white,
                    Colors.orange,
                    Colors.orange,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topRight,
                ),
              ),
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Promotions(),
                    BalansAndTarif(),
                  ],
                ),
              ),
            ),
            const Ommabop(),
            const TheList(),
            const Bees(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
