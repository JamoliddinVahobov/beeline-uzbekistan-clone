import 'package:flutter/material.dart';

class InsidePromotions extends StatelessWidget {
  final String imageIndex;
  const InsidePromotions({super.key, required this.imageIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageIndex),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 35,
                right: 15,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.cancel,
                    size: 40,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
