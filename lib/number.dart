// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;

  const CustomAppBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 35),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/handy.jpg",
                    ),
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
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'yuklanmoqda...',
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
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.settings_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.headset_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 15);
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
        SizedBox(
          height: 9,
        ),
        Container(
          height: 160,
          decoration: BoxDecoration(
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
                            backgroundImage: AssetImage(
                              "assets/handy.jpg",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'yuklanmoqda...',
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
                    SizedBox(width: 5),
                    Text(
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
