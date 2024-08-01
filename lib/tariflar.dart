// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations
import 'package:flutter/material.dart';

final TextStyle normalStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

final still = TextStyle(
  color: Colors.black,
  fontSize: 17,
);

class MultiPlus extends StatefulWidget {
  const MultiPlus({super.key});

  @override
  State<MultiPlus> createState() => _MultiPlusState();
}

class _MultiPlusState extends State<MultiPlus> {
  List<Map<String, dynamic>> plus = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': '20 GB internet paket',
    },
    {
      'icon': Icons.nights_stay_outlined,
      'text': 'Cheksiz tungi internet',
    },
    {
      'icon': Icons.message_outlined,
      'text': '500 SMS 🇺🇿',
    },
  ];
  List<String> topRowImages = [
    'assets/globe.jpg',
    'assets/tv.png',
    'assets/yt.png',
    'assets/pubg.webp',
    'assets/bemu.png',
  ];

  List<String> bottomRowImages = [
    'assets/insta.webp',
    'assets/face.jpg',
    'assets/od.png',
  ];
  List<String> bottomRowImages2 = [
    'assets/tg.jpg',
    'assets/whatsapp.jpg',
    'assets/viber.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
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
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'MULTI PLUS',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...plus.map((item) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
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
                }),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Icon(Icons.money),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "500 000 so'mgacha Beepul orqali",
                              style: still,
                            ),
                            Text(
                              "0% pul o'tkazmalari",
                              style: still,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              '1 ta super kuch tanlovga',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: topRowImages.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 16.5,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(imagePath),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bottomRowImages.map((imagePath) {
                        return CircleAvatar(
                          radius: 16.5,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePath),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bottomRowImages2.map((imagePath) {
                        return CircleAvatar(
                          radius: 16.5,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePath),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10),
            child: Text(
              "40 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 17),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MultiPro extends StatefulWidget {
  const MultiPro({super.key});

  @override
  State<MultiPro> createState() => _MultiProState();
}

class _MultiProState extends State<MultiPro> {
  List<Map<String, dynamic>> pro = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': '40 GB internet paket',
    },
    {
      'icon': Icons.nights_stay_outlined,
      'text': 'Cheksiz tungi internet',
    },
    {
      'icon': Icons.message_outlined,
      'text': '500 SMS 🇺🇿',
    },
  ];
  List<String> topRowImages = [
    'assets/globe.jpg',
    'assets/tv.png',
    'assets/yt.png',
    'assets/pubg.webp',
    'assets/bemu.png',
  ];

  List<String> bottomRowImages = [
    'assets/insta.webp',
    'assets/face.jpg',
    'assets/od.png',
  ];
  List<String> bottomRowImages2 = [
    'assets/tg.jpg',
    'assets/whatsapp.jpg',
    'assets/viber.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
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
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'MULTI PRO',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...pro.map((item) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
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
                }),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Icon(Icons.money),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2 000 000 so'mgacha Beepul orqali",
                              style: still,
                            ),
                            Text(
                              "0% pul o'tkazmalari",
                              style: still,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              '2 ta super kuch tanlovga',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: topRowImages.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 16.5,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(imagePath),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bottomRowImages.map((imagePath) {
                        return CircleAvatar(
                          radius: 16.5,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePath),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bottomRowImages2.map((imagePath) {
                        return CircleAvatar(
                          radius: 16.5,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePath),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10),
            child: Text(
              "60 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 17),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MultiMax extends StatefulWidget {
  const MultiMax({super.key});

  @override
  State<MultiMax> createState() => _MultiMaxState();
}

class _MultiMaxState extends State<MultiMax> {
  List<Map<String, dynamic>> max = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': '70 GB internet paket',
    },
    {
      'icon': Icons.nights_stay_outlined,
      'text': 'Cheksiz tungi internet',
    },
    {
      'icon': Icons.message_outlined,
      'text': '500 SMS 🇺🇿',
    },
  ];
  List<String> topRowImages = [
    'assets/globe.jpg',
    'assets/tv.png',
    'assets/yt.png',
    'assets/pubg.webp',
    'assets/bemu.png',
  ];

  List<String> bottomRowImages = [
    'assets/insta.webp',
    'assets/face.jpg',
    'assets/od.png',
  ];
  List<String> bottomRowImages2 = [
    'assets/tg.jpg',
    'assets/whatsapp.jpg',
    'assets/viber.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
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
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'MULTI MAX',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...max.map((item) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
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
                }),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Icon(Icons.money),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 000 000 so'mgacha Beepul orqali",
                              style: still,
                            ),
                            Text(
                              "0% pul o'tkazmalari",
                              style: still,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              '3 ta super kuch tanlovga',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: topRowImages.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 16.5,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(imagePath),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bottomRowImages.map((imagePath) {
                        return CircleAvatar(
                          radius: 16.5,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePath),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bottomRowImages2.map((imagePath) {
                        return CircleAvatar(
                          radius: 16.5,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(imagePath),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10),
            child: Text(
              "80 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 17),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatusSilver extends StatefulWidget {
  const StatusSilver({super.key});

  @override
  State<StatusSilver> createState() => _StatusSilverState();
}

class _StatusSilverState extends State<StatusSilver> {
  List<Map<String, dynamic>> silver = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': "50 GB o'z ichiga olgan paket",
    },
    {
      'icon': Icons.messenger_outline,
      'text': "100 GB YouTube va Messenjerlarga",
    },
    {
      'icon': Icons.sms_outlined,
      'text': '2000 SMS 🇺🇿',
    },
    {
      'icon': Icons.flight_outlined,
      'text': '200 MB 85 mamlakat uchun',
      'continuation': 'roumingda',
    },
    {
      'icon': Icons.sim_card_outlined,
      'text': "Nominal qiymati 250 000 so'm",
      'continuation': "bo'lgan oltin raqam",
    },
    {
      'icon': Icons.tv_outlined,
      'text': 'Beeline TV',
    },
    {
      'icon': Icons.money,
      'text': "Beepul orqali 0% pul o'tkazmalari",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 840,
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: Text(
              'Silver',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: silver.length,
            itemBuilder: (context, index) {
              final item = silver[index];
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['text'], style: still),
                subtitle: item.containsKey('continuation')
                    ? Text(item['continuation'], style: still)
                    : null,
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return index < silver.length - 1
                  ? Divider(thickness: 0.3, color: Colors.black, indent: 55)
                  : SizedBox.shrink();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10, bottom: 5),
            child: Text(
              "110 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatusGold extends StatefulWidget {
  const StatusGold({super.key});

  @override
  State<StatusGold> createState() => _StatusGoldState();
}

class _StatusGoldState extends State<StatusGold> {
  List<Map<String, dynamic>> gold = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': "100 GB o'z ichiga olgan paket",
    },
    {
      'icon': Icons.messenger_outline,
      'text': "200 GB YouTube va Messenjerlarga",
    },
    {
      'icon': Icons.sms_outlined,
      'text': '2000 SMS 🇺🇿',
    },
    {
      'icon': Icons.flight_outlined,
      'text': '500 MB va 10 daqiqa 85 mamlakat',
      'continuation': 'uchun roumingda',
    },
    {
      'icon': Icons.sim_card_outlined,
      'text': "Nominal qiymati 500 000 so'm",
      'continuation': "bo'lgan oltin raqam",
    },
    {
      'icon': Icons.tv_outlined,
      'text': 'Beeline TV',
    },
    {
      'icon': Icons.money,
      'text': "Beepul orqali 0% pul o'tkazmalari",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 840,
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: Text(
              'Gold',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: gold.length,
            itemBuilder: (context, index) {
              final item = gold[index];
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['text'], style: still),
                subtitle: item.containsKey('continuation')
                    ? Text(item['continuation'], style: still)
                    : null,
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return index < gold.length - 1
                  ? Divider(thickness: 0.3, color: Colors.black, indent: 55)
                  : SizedBox.shrink();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10, bottom: 5),
            child: Text(
              "150 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatusPlatinum extends StatefulWidget {
  const StatusPlatinum({super.key});

  @override
  State<StatusPlatinum> createState() => _StatusPlatinumState();
}

class _StatusPlatinumState extends State<StatusPlatinum> {
  List<Map<String, dynamic>> silver = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': "200 GB o'z ichiga olgan paket",
    },
    {
      'icon': Icons.messenger_outline,
      'text': "400 GB YouTube va Messenjerlarga",
    },
    {
      'icon': Icons.sms_outlined,
      'text': '2000 SMS 🇺🇿',
    },
    {
      'icon': Icons.flight_outlined,
      'text': '1000 MB va 20 daqiqa 85',
      'continuation': 'mamlakat uchun roumingda',
    },
    {
      'icon': Icons.flight_outlined,
      'text': "Barcha xalqaro qo'ng'iroqlar uchun",
      'continuation': '100 daqiqa',
    },
    {
      'icon': Icons.sim_card_outlined,
      'text': "Nominal qiymati 1.5 mln so'm",
      'continuation': "bo'lgan oltin raqam",
    },
    {
      'icon': Icons.tv_outlined,
      'text': 'Beeline TV',
    },
    {
      'icon': Icons.money,
      'text': "Beepul orqali 0% pul o'tkazmalari",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 930,
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: Text(
              'Platinum',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: silver.length,
            itemBuilder: (context, index) {
              final item = silver[index];
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['text'], style: still),
                subtitle: item.containsKey('continuation')
                    ? Text(item['continuation'], style: still)
                    : null,
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return index < silver.length - 1
                  ? Divider(thickness: 0.3, color: Colors.black, indent: 55)
                  : SizedBox.shrink();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10, bottom: 5),
            child: Text(
              "200 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BeelineSport extends StatefulWidget {
  const BeelineSport({super.key});

  @override
  State<BeelineSport> createState() => _BeelineSportState();
}

class _BeelineSportState extends State<BeelineSport> {
  List<Map<String, dynamic>> silver = [
    {
      'icon': Icons.phone_outlined,
      'text': "Cheksiz qo'ng'iroqlar 🇺🇿",
    },
    {
      'icon': Icons.language_outlined,
      'text': "10 GB kiritilgan paket",
    },
    {
      'icon': Icons.sms_outlined,
      'text': '1000 SMS 🇺🇿',
    },
    {
      'icon': Icons.tv_outlined,
      'text': 'Beeline TV + Setanta sports',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  'Beeline',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: Text(
              'Sport',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: silver.length,
            itemBuilder: (context, index) {
              final item = silver[index];
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['text'], style: still),
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return index < silver.length - 1
                  ? Divider(thickness: 0.3, color: Colors.black, indent: 55)
                  : SizedBox.shrink();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10, bottom: 5),
            child: Text(
              "50 000 so'm/oy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Center(
                  child: Text("Ulash", style: normalStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
