// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations
import 'package:beeline_uzbekistan_clone/barcha_xizmatlar_content.dart';
import 'package:beeline_uzbekistan_clone/tariflar_content.dart';
import 'package:flutter/material.dart';

class Tariflar extends StatefulWidget {
  const Tariflar({super.key});

  @override
  TariflarState createState() => TariflarState();
}

class TariflarState extends State<Tariflar> {
  bool showTariflar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildCustomSegmentedControl(),
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 0.2,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: showTariflar
          ? const TariflarContent()
          : const BarchaXizmatlarContent(),
    );
  }

  Widget buildCustomSegmentedControl() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.3),
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment:
                  showTariflar ? Alignment.centerLeft : Alignment.centerRight,
              duration: const Duration(milliseconds: 200),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  width: 155,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => showTariflar = true),
                    child: Center(
                      child: Text(
                        "Tariflar",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: showTariflar
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => showTariflar = false),
                    child: Center(
                      child: Text(
                        "Barcha xizmatlar",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: !showTariflar
                              ? FontWeight.w500
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
