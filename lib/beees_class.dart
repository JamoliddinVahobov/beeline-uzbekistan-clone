import 'package:flutter/material.dart';

class Bees extends StatefulWidget {
  const Bees({super.key});

  @override
  BeesState createState() => BeesState();
}

class BeesState extends State<Bees> {
  final TextStyle headerStyle =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  final TextStyle normalStyle =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  final TextStyle opacityStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black.withOpacity(
      0.6,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildBeeMarketSection(),
          buildBeelineTVSection(),
          buildBeelineMusicSection(),
          buildBeepulSection(),
          buildBipSection(),
        ],
      ),
    );
  }

  Widget buildBeeMarketSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('BeeMarket', style: headerStyle),
          Text(
            'Smartfonni manfaati bilan muddatli to\'lov evaziga xarid qiling. Bu hali hammasi emas, sovg\'a sifatida 3*15 GB internet va "Beeline TV"da 1 oylik "Start" obunasiga ega bo\'ling.',
            style: opacityStyle,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildRoundedImage('assets/samsung.webp'),
                buildRoundedImage('assets/zte.png'),
                buildRoundedImage('assets/mi.png'),
                buildRoundedImage('assets/honor.webp'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(10),
                border: const Border(
                  bottom: BorderSide(color: Colors.orange, width: 5),
                ),
              ),
              child: Text('Sotib olish', style: normalStyle),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBeelineTVSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Beeline TV', style: headerStyle),
          Text(
            '100 dan ortiq telekanallar, filmlar va seriallarni internet trafik sarflamagan holda tomosha qiling',
            style: opacityStyle,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildRoundedImage('assets/eur.png'),
                buildRoundedImage('assets/pt1.jpg'),
                buildRoundedImage('assets/pt2.jpg'),
                buildRoundedImage('assets/friday.jpg'),
                buildRoundedImage('assets/righs.jpg'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(10),
                border: const Border(
                  bottom: BorderSide(color: Colors.orange, width: 5),
                ),
              ),
              child: Text("Ko'rish", style: normalStyle),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBeelineMusicSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Beeline Music', style: headerStyle),
          Text(
            'Internet trafiki sarflamagan holda millionlab qo\'shiqlar va mashhur radiostansiyalarni tinglang',
            style: opacityStyle,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildRoundedImage('assets/godzilla.png'),
                buildRoundedImage('assets/chronic.webp'),
                buildRoundedImage('assets/shape.jpg'),
                buildRoundedImage('assets/straight.jpg'),
                buildRoundedImage('assets/sugar.jpg'),
                buildRoundedImage('assets/dre.jpg'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    bottom: BorderSide(color: Colors.orange, width: 5),
                  ),
                ),
                child: Text('Beeline Music', style: normalStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBeepulSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Beepul', style: headerStyle),
          Text(
            'Beepul orqali to\'lovlar amalga oshiring va har bir to\'lov uchun bonuslarga ega bo\'ling!',
            style: opacityStyle,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildRoundedImage('assets/mob.png'),
                buildRoundedImage('assets/bon.png'),
                buildRoundedImage('assets/avto.png'),
                buildRoundedImage('assets/kommunal.jpg'),
                buildRoundedImage('assets/beep.webp'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(10),
                border: const Border(
                  bottom: BorderSide(color: Colors.orange, width: 5),
                ),
              ),
              child: Text('Beepul', style: normalStyle),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBipSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('BiP', style: headerStyle),
          Text(
            'Internet trafiki sarflamagan holda sifatli video va ovozli qo\'ng\'iroqlarni amalga oshiring.',
            style: opacityStyle,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildRoundedImage('assets/secur.jpg'),
                buildRoundedImage('assets/translate.jpg'),
                buildRoundedImage('assets/vide.jpg'),
                buildRoundedImage('assets/meg.png'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(10),
                border: const Border(
                  bottom: BorderSide(color: Colors.orange, width: 5),
                ),
              ),
              child: Text('O\'rnatish', style: normalStyle),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRoundedImage(String assetName) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 12,
      ),
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.4),
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage(assetName),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
