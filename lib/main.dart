// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations
import 'package:beeline_uzbekistan_clone/home_screen.dart';
import 'package:beeline_uzbekistan_clone/kongilochar.dart';
import 'package:beeline_uzbekistan_clone/number.dart';
import 'package:beeline_uzbekistan_clone/tariflar_controller.dart';
import 'package:beeline_uzbekistan_clone/xarajatlar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Beeline(),
    ),
  );
}

final normal = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14,
);

final still = TextStyle(
  color: Colors.black,
  fontSize: 17,
);

final cool = TextStyle(
  color: Colors.black,
  fontSize: 25,
  fontWeight: FontWeight.w900,
);
final pretty = TextStyle(
  color: Colors.black.withOpacity(0.6),
  fontSize: 17,
);

class Beeline extends StatefulWidget {
  const Beeline({super.key});

  @override
  State<Beeline> createState() => _BeelineState();
}

class _BeelineState extends State<Beeline> {
  bool _showSnackbar = false;
  int _selectedIndex = 0;

  void _toggleSnackbar() {
    setState(() {
      _showSnackbar = !_showSnackbar;
    });
    if (_showSnackbar) {
      Future.delayed(Duration(minutes: 100), () {
        if (mounted) {
          setState(() {
            _showSnackbar = false;
          });
        }
      });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? CustomAppBar(
              onTap: _toggleSnackbar,
            )
          : null,
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: [
              HomeScreen(onSnackbarTap: _toggleSnackbar),
              Xarajatlar(),
              Tariflar(),
              Kongilochar(),
              Center(child: Text('Screen 5')),
            ],
          ),
          if (_showSnackbar)
            GestureDetector(
              onTap: _toggleSnackbar,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomSnackbarContent(
                    onTap: () {
                      setState(() {
                        _showSnackbar = false;
                      });
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Bosh sahifa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'Xarajatlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sim_card_outlined),
            label: 'Tariflar',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_favorites),
            label: "Ko'ngilochar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Moliya',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
        iconSize: 30,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
