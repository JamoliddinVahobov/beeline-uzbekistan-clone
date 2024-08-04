// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations
import 'package:flutter/material.dart';

class BarchaXizmatlarContent extends StatefulWidget {
  const BarchaXizmatlarContent({super.key});

  @override
  BarchaXizmatlarContentState createState() => BarchaXizmatlarContentState();
}

class BarchaXizmatlarContentState extends State<BarchaXizmatlarContent> {
  final List<Map<String, String>> internet = [
    {'title': 'VOLTE', 'description': ''},
    {
      'title': 'Daqiqa va megabaytlarni o\'zaro almashtiring',
      'description':
          'Daqiqalardan foydalanib ulgurmayapsizmi va ular kuyib ketyaptimi? Ularni internetga almashtiring! Zaruriyat tug\'ilganda esa, megabaytlar evaziga qo\'shimcha daqiqalarga ega bo\'ling!'
    },
    {'title': 'Do It!', 'description': 'Haqiqiy cheksiz tungi Internet!'},
    {
      'title': 'PLUS 7',
      'description':
          'Istalgan vaqtda «PLUS» paketlariga ulanishingiz va aloqa xizmatlaridan qulay narxlarda foydalanishingiz mumkin!'
    },
    {
      'title': 'PLUS 14',
      'description':
          'Istalgan vaqtda qo\'shimcha "PLUS" paketini ulashingiz va qulay narxda aloqa xizmatlaridan foydalanishda davom etishingiz mumkin!'
    },
    {'title': 'Aloqada', 'description': ''},
    {'title': 'Internet', 'description': ''},
    {'title': 'Erkin muloqot', 'description': ''},
    {'title': 'Erkin muloqot +', 'description': ''},
  ];
  final List<Map<String, String>> digital = [
    {
      'title': 'Beepul',
      'description':
          'Hammasini Beepul orqali to\'lang. Har bir to\'lov va balansni to\'ldirish uchun Beep bonuslarini oling, bonusni internet-trafik va daqiqalarga ayirboshlang.'
    },
    {
      'title': 'Beeline Press',
      'description':
          'Internet-trafikni sarflamagan holda sevimli jurnallar va gazetalarni onlayn rejimida o\'qing!'
    },
    {
      'title': 'Beeline TV',
      'description':
          'Sevimli film, serial va TV kanallarni internet-trafik sarflamasdan tomosha qiling!'
    },
    {
      'title': 'Setanta Sports: 30 kunga to\'lovsiz obuna',
      'description':
          'Faqat bizning mijozlarimizga! 2024-yil 1-sentyabrgacha promoobunani rasmiylashtiring va jahon miqyosidagi sport o\'yinlari hamda turnirlarini 30 kun davomida bepul tomosha qiling.'
    },
    {
      'title': 'BiP',
      'description':
          'Xavfsiz va foydalanish uchun qulay kommunikatsiya platformasi.'
    },
    {
      'title': 'Yandex Plus',
      'description':
          'Yandex Music, Kinopoisk, Yandex Go va Bookmate xizmatlari bitta obunada!'
    },
    {
      'title': 'Beeline Music & Radio',
      'description': 'Sevimli musiqani internet-trafik sarflamasdan tinglang!'
    },
    {
      'title': 'BeeGUDOK',
      'description':
          "«BeeGudok» xizmati oddiy zerikarli gudoklarni siz xush ko'rgan musiqa va hazillarga almashtirish imkonini beradi."
    },
    {
      'title': 'Beeline Kiosk',
      'description':
          "Yetakchi nashriyotlarning mashhur jurnallarini o'qishni zamonaviy usuli bo'lgan, gadjatingizdagi jurnallar kutubxonasi"
    },
    {
      'title': 'Stingray Music',
      'description':
          'Siz turli janrlarning uzluksiz oqimli musiqasini tinglashingiz mumkin: pop, rep, rok, jaz va boshqalar.'
    },
    {
      'title': 'Beeline Apps',
      'description':
          'Reklamasiz va internet-trafikni sarflamagan holda eng zo\'r o\'yinlar va mobil ilovalarni yuklab oling!'
    },
    {
      'title': 'Smartbook',
      'description':
          'Yangi bilimlarga ega bo\'ling va asosiy g\'oyalarni qisqa mazmunini audiokitoblarda tinglab bahramand bo\'ling!'
    },
  ];
  final List<Map<String, String>> sms = [
    {
      'title': 'SMS non-stop',
      'description':
          'SMS non-stop xizmati bilan kuniga 250 SMS ga ega bo\'ling!',
    },
    {
      'title': '20 SMS paketi',
      'description': 'Yanada ko\'proq SMS muloqot!',
    },
    {
      'title': '50 SMS paketi',
      'description': '',
    },
    {
      'title': '100 SMS paketi',
      'description': '',
    },
    {
      'title': '500 SMS Paketi',
      'description': '',
    },
    {
      'title': '1000 SMS Paketi',
      'description': '',
    },
    {
      'title': '10 xalqaro SMS lar Paketi',
      'description': '',
    },
    {
      'title': '20 xalqaro SMS lar Paketi',
      'description': '',
    },
    {
      'title': '30 xalqaro SMS lar paketi',
      'description': '',
    },
    {
      'title': 'SMS Flash',
      'description': '',
    },
    {
      'title': 'SMS-jadval',
      'description': '',
    },
  ];

  final List<Map<String, String>> asosiy = [
    {
      "title": "SIM-kartani almashtirish",
      "description":
          "SIM-karta yo'qolgan yoki unga shikast yetgan taqdirda siz o'z raqamingizni va unga ulangan barcha xizmatlarni saqlab qolgan holda «SIM-kartani almashtirish» xizmatidan foydalanishingiz mumkin.",
    },
    {
      "title": "Beep Call",
      "description": "",
    },
    {
      "title": "Jonli nol",
      "description":
          "Hisobingizdagi pul tugab qoldimi? Muhim qo'ng'iroqni o'tkazib yuborishdan xavotirga tushmang: avvaldan to'lov tizimidagi barcha abonentlarda balansdagi nol \"jonli\"! O'z uyali telefoningizni o'chirmang – va yaqinlaringiz sizga hamisha qo'ng'iroq qila oladi!",
    },
    {
      "title": "SMS",
      "description":
          "Matnli xabarlar yordamida do'stlar va yaqinlar bilan muloqotingizni kengaytiring! SMS yuboring va aytolmagan gaplaringiz haqida xabar bering.",
    },
    {
      "title": "Raqamni aniqlash",
      "description":
          "Raqam aniqlash xizmati bilan siz har doim kim qo'ng'iroq qilganidan xabardor bo'lasiz! Xizmat bepul taqdim etiladi va barcha tarif rejalariga avtomatik tarzda ulangan.",
    },
    {
      "title": "Uch va undan ortiq kishilar bilan suhbat",
      "description": "",
    },
    {
      "title": "Menga qo'ng'iroq qil",
      "description":
          "Hisobingizda yetarlicha pul bo'lmaganda, endi Sizga qachon yaqinlaringiz qo'ng'iroq qilishar ekan deb kutish shart emas. «Menga qo'ng'iroq qil» xizmati yordamida siz bitta so'rov bilan abonentning qo'ng'irog'ini kutayotganingiz haqida xabar berishingiz mumkin.",
    },
    {
      "title": "Mening hisobimni to'ldirib qo'y",
      "description": "",
    },
    {
      "title": "Kodni aniqlash",
      "description":
          "ndi shahar va mobil telefon raqamlarining kodini aniqlash yanada oson bo'ldi! Yangi «Kodni aniqlash» xizmati bilan istagan raqamingizni kodini bilib olasiz!",
    },
    {
      "title": "O'zimning raqamlarim",
      "description":
          "Xizmat Sizning nomingizda qaysi raqamlar ro'yxatdan o'tganligini aniqlash imkonini beradi",
    },
    {
      "title": "Boshqa raqamga yo'naltirish",
      "description":
          "Masalan, siz muhim qo'ng'iroqni kutayotgan bo'lsangizu, telefonning akkumulyatori o'tirib qolsa, shunday paytlarda qulay xizmat.",
    },
    {
      "title": "Pullik obunalarni o'chirish",
      "description": "",
    },
    {
      "title": "Davlat va ijtimoiy muhim saytlardan bepul foydalanish",
      "description": "",
    },
    {
      "title": "Abonentning xohishiga ko'ra raqamni blokirovka qilish",
      "description": "",
    },
  ];

  final List<Map<String, String>> maxsus = [
    {
      "title": "Raqamni antianiqplash",
      "description":
          "Qo'ng'iroq chog'ida Antianiqplash sizning raqamingizni, hatto suhbatdoshda Raqamni aniqplash xizmati o'rnatilgan taqdirda ham, sir saqlaydi."
    },
    {"title": "«Ko'rinmas bir oyga»", "description": ""},
    {
      "title": "«Ishonchli daqiqalar va gigabaytlar»",
      "description":
          "Hozir daqiqalar yoki gigabaytlar paketini oling — keyinroq to'lang!"
    },
    {
      "title": "Ishonchli to'lov",
      "description":
          "Sizning so'rovingizga binoan hisobingizdagi mablag' 3 kunlik muddatga ko'paytiriladi va siz aloqada bo'lasiz!"
    },
    {
      "title": "Raqamni masofadan tiklash",
      "description":
          "\"Raqamni masofadan tiklash\" xizmati abonentga uzilgan kundan boshlab 30 kun ichida uzilgan raqamni masofadan turib tiklash imkoniyatini beradi."
    },
    {
      "title": "Xabardor bo'l",
      "description":
          "Agar sizning telefoningiz eng kerak vaqtda o'chib qolsa, siz biror bir qo'ng'iroqni o'tkazib yubormaysiz. Sizga qo'ng'iroq qilishgan raqamlari SMS-xabar orqali keladi."
    },
    {"title": "Muddatli to'lov evaziga Oltin raqam", "description": ""},
    {"title": "Ko'rinmas bir kunga", "description": ""},
    {
      "title": "Bog'lanish mumkin",
      "description":
          "Sizga qo'ng'iroq qilgan abonentlar hamisha sizning telefoningiz tarmoqda paydo bo'lganligidan va siz bilan yana aloqa bog'lash mumkinligidan xabardor qilinadi."
    },
    {"title": "Qo'shimcha SIM-karta", "description": ""},
    {
      "title": "Perezagruzka",
      "description":
          "Agarda Sizda tarif rejangiz bo'yicha taqdim etilgan trafik yakunlansa, unda Siz ushbu xizmatdan foydalanib, tarif rejani qayta ishga tushirib, daqiqa, SMS va MB paketlarini to'liq hajmda olishingiz mumkin."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Text(
            "Internet va qo'ng'iroqlar",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // First ListView section
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics:
              const NeverScrollableScrollPhysics(), // Disable internal scrolling
          shrinkWrap: true, // Ensure ListView takes up only the needed height
          itemCount: internet.length,
          itemBuilder: (context, index) {
            final service = internet[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (service['description']!.isNotEmpty)
                    Text(service['description']!),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.orange, width: 5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Batafsil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        // Second section title
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Text(
            "Digital",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // Second ListView section
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics:
              const NeverScrollableScrollPhysics(), // Disable internal scrolling
          shrinkWrap: true, // Ensure ListView takes up only the needed height
          itemCount: digital.length,
          itemBuilder: (context, index) {
            final service = digital[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (service['description']!.isNotEmpty)
                    Text(service['description']!),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.orange, width: 5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Batafsil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Text(
            "SMS",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // Third ListView section
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics:
              const NeverScrollableScrollPhysics(), // Disable internal scrolling
          shrinkWrap: true, // Ensure ListView takes up only the needed height
          itemCount: sms.length,
          itemBuilder: (context, index) {
            final service = sms[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (service['description']!.isNotEmpty)
                    Text(service['description']!),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.orange, width: 5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Batafsil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Text(
            "Asosiy xizmatlar",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // Fourth ListView section
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics:
              const NeverScrollableScrollPhysics(), // Disable internal scrolling
          shrinkWrap: true, // Ensure ListView takes up only the needed height
          itemCount: asosiy.length,
          itemBuilder: (context, index) {
            final service = asosiy[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (service['description']!.isNotEmpty)
                    Text(service['description']!),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.orange, width: 5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Batafsil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Text(
            "Maxsus xizmatlar",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // Fifth ListView section
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: maxsus.length,
          itemBuilder: (context, index) {
            final service = maxsus[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (service['description']!.isNotEmpty)
                    Text(service['description']!),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.orange, width: 5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Batafsil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
