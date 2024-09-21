import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;

  const CustomAppBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Get the screen height using MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;

    double appBarHeight = screenHeight * 0.15;

    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.6),
      flexibleSpace: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: appBarHeight * 0.15),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/handy.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  color: Colors.transparent,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Jamoliddin',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 25,
                        ),
                      ],
                    ),
                    Text(
                      '90 570-89-23',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.headset_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ).asGlass(
      blurX: 8,
      blurY: 8,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + 20); // Default height
}

class CustomSnackbarContent extends StatelessWidget {
  final VoidCallback onTap;

  const CustomSnackbarContent({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 6.5,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Container(
          height: 160,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.blue,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.yellow.shade200,
                            backgroundImage: const AssetImage(
                              "assets/handy.jpg",
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Jamoliddin',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green,
                                  ),
                                ),
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              '90 570-89-23',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "1 001 so'm",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: onTap,
                child: Text(
                  "Qo'shish",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
