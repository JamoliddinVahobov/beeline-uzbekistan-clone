import 'package:flutter/material.dart';

const normal = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14,
);

class Ommabop extends StatefulWidget {
  const Ommabop({super.key});

  @override
  State<Ommabop> createState() => _OmmabopState();
}

class _OmmabopState extends State<Ommabop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 5),
          child: Text(
            "Ommabop",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/int.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Internet-paketlar",
                    style: normal,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 70,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 01,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/cheg.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Chegirmalar",
                  style: normal,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange,
                                width: 01,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/tar.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            "Tariflar",
                            style: normal,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 8),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/beeclub.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            "BeeClub",
                            style: normal,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/yarma.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Yarmarka",
                    style: normal,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    height: 170,
                    width: 165,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 01,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/cheg.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Chegirmalar",
                  style: normal,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
