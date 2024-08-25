import 'package:flutter/material.dart';

const still = TextStyle(
  color: Colors.black,
  fontSize: 17,
);

class Qoldiqlar extends StatefulWidget {
  const Qoldiqlar({super.key});

  @override
  State<Qoldiqlar> createState() => _QoldiqlarState();
}

class _QoldiqlarState extends State<Qoldiqlar> {
  final TextStyle normalStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 12,
            top: 20,
          ),
          child: Column(
            children: items.map((item) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                              const SizedBox(width: 16.0),
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
                                const SizedBox(width: 3),
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
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 15, 17),
          child: Container(
            height: 140,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 0.4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 1.5),
                  blurRadius: 4,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 17, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Kirim vs xarajatlar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '1 - 30 lyul uchun',
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withAlpha(150)),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Text('To\'ldirish'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            child: LinearProgressIndicator(
                              value: 38000 / 38000,
                              color: Colors.green,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 17),
                        child: Text('38 000'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text('Xarajatlar'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            child: LinearProgressIndicator(
                              value: 37000 / 38000,
                              color: Colors.red,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: Text('37 000'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 15,
              bottom: 30,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.money, color: Colors.black),
                  const SizedBox(width: 8),
                  Text(
                    'Kirimlarni tekshirish',
                    style: normalStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 5),
          child: Text(
            "Detalizatsiyani yuklash",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12, right: 10, bottom: 30),
                  child: Container(
                    height: 100,
                    width: 179,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 0.4,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 1.5),
                          blurRadius: 4,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 17, top: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Загрузить',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'на телефон',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 42, left: 35),
                            child: Icon(Icons.picture_as_pdf_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 30),
                  child: Container(
                    height: 100,
                    width: 179,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 0.4,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 1.5),
                          blurRadius: 4,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 17, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Pochtaga yuborish',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 125),
                            child: Icon(Icons.mail_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
