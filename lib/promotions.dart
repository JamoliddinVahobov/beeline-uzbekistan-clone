// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top: 75),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: CarouselSlider(
                items: promotionUrls
                    .map(
                      (url) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade700,
                              width: 3,
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                url,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  padEnds: false,
                  pauseAutoPlayOnTouch: true,
                  pageSnapping: false,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.3,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
