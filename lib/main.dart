// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations
import 'package:beeline_uzbekistan_clone/home_screen.dart';
import 'package:beeline_uzbekistan_clone/number.dart';
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
              Center(child: Text('Screen 2')),
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

class Xarajatlar extends StatefulWidget {
  const Xarajatlar({super.key});

  @override
  State<Xarajatlar> createState() => _XarajatlarState();
}

class _XarajatlarState extends State<Xarajatlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 0.3,
                ),
              ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+998 90 570-89-23',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18, right: 5),
            child: IconButton(icon: Icon(Icons.share), onPressed: () {}),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 45),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: Size(350, 170),
                    painter: HalfCirclePainter(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: Text(
                          '35 000',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '1 - 29 iyul uchun miqdor',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Kiruvchi qo‘ng‘iroqlar ma’lumotlari har 3 kunda ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              " avtomatik ravishda yangilanadi",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Qoldiqlar(),
          ],
        ),
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 23
      ..strokeCap = StrokeCap.round;

    final startAngle = -3.14; // -180 degrees
    final sweepAngle = 3.14; // 180 degrees

    final rect = Rect.fromLTWH(0, 0, size.width, size.height * 2);

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Qoldiqlar extends StatefulWidget {
  const Qoldiqlar({super.key});

  @override
  State<Qoldiqlar> createState() => _QoldiqlarState();
}

class _QoldiqlarState extends State<Qoldiqlar> {
  final List<Map<String, dynamic>> items = [
    {
      'icon': Icons.wifi_outlined,
      'text': '10,63 GB',
      'amount': '0 so\'m',
      'color': Colors.green,
    },
    {
      'icon': Icons.phone_forwarded_outlined,
      'text': '58 Daqiqa',
      'amount': '0 so\'m',
      'color': Colors.pink,
    },
    {
      'icon': Icons.message_outlined,
      'text': '2 SMS',
      'amount': '0 so\'m',
      'color': Colors.blue,
    },
    {
      'icon': Icons.payment_outlined,
      'text': 'To\'lov',
      'amount': '35 000 so\'m',
      'color': Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 12,
        top: 20,
      ),
      child: Column(
        children: items.map((item) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            item['icon'],
                            color: item['color'],
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            item['text'],
                            style: still,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Text(
                              item['amount'],
                              style: still,
                            ),
                            SizedBox(width: 3),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black.withOpacity(0.6),
                              size: 17,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Divider(
                      thickness: 0.4,
                      color: Colors.black,
                      indent: 40,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
