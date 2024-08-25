import 'package:beeline_uzbekistan_clone/qoldiqlar.dart';
import 'package:flutter/material.dart';

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
          preferredSize: const Size.fromHeight(1),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 0.3,
                ),
              ),
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 15),
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
            child: IconButton(icon: const Icon(Icons.share), onPressed: () {}),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(350, 170),
                    painter: HalfCirclePainter(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 120),
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
            const SizedBox(height: 25),
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
            const Qoldiqlar(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: const Border(
            top: BorderSide(
              color: Colors.black,
              width: 0.2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 0.3,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            DropdownButton<String>(
              value: '1- 30 Iyul',
              items: ['1- 30 Iyul'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              underline: const SizedBox.shrink(),
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
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

    const startAngle = -3.14; // -180 degrees
    const sweepAngle = 3.14; // 180 degrees

    final rect = Rect.fromLTWH(0, 0, size.width, size.height * 2);

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
