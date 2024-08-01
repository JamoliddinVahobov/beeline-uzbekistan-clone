// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations
import 'package:beeline_uzbekistan_clone/home_screen.dart';
import 'package:beeline_uzbekistan_clone/number.dart';
import 'package:beeline_uzbekistan_clone/tariflar.dart';
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
              Center(child: Text('Screen 3')),
              Center(child: Text('Screen 4')),
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

final TextStyle normalStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

class TariflarContent extends StatefulWidget {
  const TariflarContent({super.key});

  @override
  TariflarContentState createState() => TariflarContentState();
}

class TariflarContentState extends State<TariflarContent> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToPosition(int index) {
    final double height = MediaQuery.of(context).size.height;
    _scrollController.animateTo(
      index * height * 0.7, // Adjust this multiplier as needed
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 15, top: 30, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 245,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 55,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[500],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, top: 13.5),
                              child: Text(
                                'KONSTRUKTOR',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 5),
                          child: Text(
                            'Qancha 🌍 gigabayt, 👏 daqiqa va ✉️ SMS kerakligini tanlang. Ortiqcha harajatlarsiz, faqat kerakli xizmatlar uchun to\'lang',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 15),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.amber[400],
                                borderRadius: BorderRadius.circular(10),
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.orange, width: 5),
                                ),
                              ),
                              child: Center(
                                child: Text("O'z tarifingizni yarating",
                                    style: normalStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 25, bottom: 5),
                    child: Text(
                      "MULTI KUCH",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  MultiPlus(),
                  SizedBox(height: 10),
                  MultiPro(),
                  SizedBox(height: 10),
                  MultiMax(),
                  SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 17, bottom: 5),
                    child: Text(
                      "STATUS",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  StatusSilver(),
                  SizedBox(height: 10),
                  StatusGold(),
                  SizedBox(height: 10),
                  StatusPlatinum(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 25, bottom: 5),
                    child: Text(
                      "BOSHQA TARIFLAR",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  BeelineSport(),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.black, width: 0.7))),
          child: SegmentedControl(onSegmentTapped: _scrollToPosition),
        ),
      ],
    );
  }
}

class SegmentedControl extends StatefulWidget {
  final Function(int) onSegmentTapped;

  const SegmentedControl({super.key, required this.onSegmentTapped});

  @override
  SegmentedControlState createState() => SegmentedControlState();
}

class SegmentedControlState extends State<SegmentedControl> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildSegmentButton('Konstruktor', 0),
          _buildSegmentButton('Multi kuch', 1),
          _buildSegmentButton('Status', 4),
          _buildSegmentButton('Boshqa tariflar', 9),
        ],
      ),
    );
  }

  Widget _buildSegmentButton(String label, int index) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              _selectedIndex == index ? Colors.amber : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side:
                BorderSide(color: Colors.black, width: 0.2), // Add border here
          ),
        ),
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
          widget.onSegmentTapped(index);
        },
        child: Text(label, style: TextStyle(color: Colors.black)),
      ),
    );
  }
}

//
//
//
//
//
//
class BarchaXizmatlarContent extends StatefulWidget {
  const BarchaXizmatlarContent({super.key});

  @override
  BarchaXizmatlarContentState createState() => BarchaXizmatlarContentState();
}

class BarchaXizmatlarContentState extends State<BarchaXizmatlarContent> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Barcha Xizmatlar Content",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
