// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

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

class BalansAndTarif extends StatefulWidget {
  const BalansAndTarif({super.key});

  @override
  State<BalansAndTarif> createState() => _BalansAndTarifState();
}

class _BalansAndTarifState extends State<BalansAndTarif> {
  List info = [
    Traffik(
      text1: "24.85",
      text2: "youtube",
      text3: "27 august gacha",
    ),
    Traffik(
      text1: "13.85",
      text2: "trafik bo'yicha",
      text3: "27 august gacha",
    ),
    Traffik(
      text1: "500 SMS",
      text2: "trafik bo'yicha",
      text3: "27 august gacha",
    ),
    Traffik(
      text1: "24101 SMS",
      text2: "bonus",
      text3: "31 iyul gacha",
    ),
    Traffik(
      text1: "77",
      text2: "bonus paket",
      text3: "1 august gacha",
    ),
    Traffik(
      text1: "Cheksiz",
      text2: "tarif bo'yicha",
      text3: "27 august gacha",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 17,
                        top: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Balans',
                            style: still,
                          ),
                          Text(
                            '1 001',
                            style: cool,
                          ),
                          Text(
                            "so'm",
                            style: pretty,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Container(
                          height: 37,
                          width: 120,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.black,
                                ]),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: FittedBox(
                                child: Text(
                                  "To'ldirish",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 150,
                width: 205,
                margin: EdgeInsets.only(left: 7, right: 15),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.3, color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarif',
                            style: still,
                          ),
                          Text(
                            "MULTI 2 (30%)",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 3),
                      child: Divider(
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        // top: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Keyingi to'lov",
                            style: still,
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "26 avg, 35 000 so'm",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 1,
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Container(
            height: 155,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 0.3, color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: info
                          .map((information) => design(information))
                          .toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 4),
                  child: Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Barcha qoldiqlarni ko'rish",
                        style: still,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.only(right: 5),
        //   child: Expanded(
        //     child: Container(
        //       height: 155,
        //       margin: EdgeInsets.symmetric(horizontal: 10),
        //       decoration: BoxDecoration(
        //         border: Border.all(width: 0.3, color: Colors.black),
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(20),
        //       ),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.only(
        //               left: 20,
        //               top: 15,
        //             ),
        //             child: SingleChildScrollView(
        //               scrollDirection: Axis.horizontal,
        //               child: Row(
        //                 children: info
        //                     .map((information) => design(information))
        //                     .toList(),
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(top: 5, bottom: 4),
        //             child: Divider(
        //               color: Colors.black,
        //               thickness: 0.5,
        //             ),
        //           ),
        //           InkWell(
        //             onTap: () {},
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 Text(
        //                   "Barcha qoldiqlarni ko'rish",
        //                   style: still,
        //                 ),
        //                 SizedBox(
        //                   width: 5,
        //                 ),
        //                 Icon(
        //                   Icons.arrow_forward_ios,
        //                   size: 15,
        //                   color: Colors.black.withOpacity(0.6),
        //                 ),
        //               ],
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

Widget design(information) {
  return Padding(
    padding: const EdgeInsets.only(right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          information.text1,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          information.text2,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          information.text3,
          style: pretty,
        ),
      ],
    ),
  );
}

class Traffik {
  String? text1;
  String? text2;
  String? text3;
  Traffik({
    this.text1,
    this.text2,
    this.text3,
  });
}
