import 'package:flutter/material.dart';

class Moliyalar extends StatefulWidget {
  const Moliyalar({super.key});

  @override
  State<Moliyalar> createState() => _MoliyalarState();
}

class _MoliyalarState extends State<Moliyalar> {
  final TextEditingController _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              border: const Border(
                top: BorderSide(color: Colors.black, width: 0.5),
              )),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: Image.asset(
                    "assets/cashback.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 15),
                  child: Container(
                    height: 405,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'PIN kodingizni kiriting',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Beepul ilovasiga kirishni himoyalash uchun',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.grey[700]),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.7,
                              ),
                            ),
                            child: TextField(
                              controller: _pinController,
                              obscureText: true,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: "****", border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextButton(
                            onPressed: () {
                              _showConfirmationDialog(context);
                            },
                            child: const Text(
                              "PIN-kodni unutdingizmi?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 8),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade400,
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.help_outline,
                size: 60,
                color: Colors.orange,
              ),
              const SizedBox(height: 16),
              const Text(
                'Haqiqatan ham PIN-kodni qayta tiklamoqchimisiz?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Yo'q",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Ha",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
