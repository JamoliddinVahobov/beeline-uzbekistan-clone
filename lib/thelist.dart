// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

final still = TextStyle(
  color: Colors.black,
  fontSize: 17,
);

class TheList extends StatefulWidget {
  const TheList({super.key});

  @override
  TheListState createState() => TheListState();
}

class TheListState extends State<TheList> {
  final List<Map<String, dynamic>> items = [
    {
      'icon': Icons.language_outlined,
      'text': 'Chegirmali takliflar',
      'trailing': '50% gacha'
    },
    {'icon': Icons.shopping_bag_outlined, 'text': 'Barcha xizmatlar'},
    {'icon': Icons.check_circle_outline, 'text': 'Ulangan xizmatlar'},
    {'icon': Icons.payment_outlined, 'text': "Ishonchli to'lov"},
    {'icon': Icons.music_note_outlined, 'text': 'BeeGudok'},
    {'icon': Icons.calculate_outlined, 'text': "Sug‘urta"},
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
                          Icon(item['icon']),
                          SizedBox(width: 16.0),
                          Text(
                            item['text'],
                            style: still,
                          ),
                        ],
                      ),
                      SizedBox(width: 45),
                      if (item['trailing'] != null)
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green.shade800,
                                  width: 1,
                                ),
                                color: Colors.lightGreen[200],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(item['trailing'],
                                  style: TextStyle(color: Colors.green)),
                            ),
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black.withOpacity(0.6),
                          size: 17,
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
