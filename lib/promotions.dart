// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  const Promotions({super.key});

  @override
  PromotionsState createState() => PromotionsState();
}

class PromotionsState extends State<Promotions> {
  List<String> promotionUrls = [
    'assets/juma_takliflari.png',
    'assets/multi.jpg',
    'assets/beepul.png',
    'assets/bemarket.png',
    'assets/xorij.jpg',
    'assets/sugurta.jpg',
    'assets/bip.png',
    'assets/beefortuna.jpg',
    'assets/beeclub.jpg',
    'assets/betv.png',
    'assets/yand.png',
    'assets/status.jpg',
    'assets/mb.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 12),
          ...promotionUrls.map((url) => PromotionItem(imageUrl: url)),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class PromotionItem extends StatefulWidget {
  final String imageUrl;
  const PromotionItem({
    super.key,
    required this.imageUrl,
  });

  @override
  PromotionItemState createState() => PromotionItemState();
}

class PromotionItemState extends State<PromotionItem> {
  bool _isHighlighted = false;

  void _toggleHighlight() {
    setState(() {
      _isHighlighted = !_isHighlighted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleHighlight,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        height: 130,
        width: 105,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue.shade700,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(
              widget.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
