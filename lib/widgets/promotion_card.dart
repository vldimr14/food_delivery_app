import 'dart:math';

import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  final String text;
  final String imagePath;
  const PromotionCard({Key? key, required this.text, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int minCardHeight = (MediaQuery.of(context).size.height * 0.2).toInt();
    int maxCardHeight = (MediaQuery.of(context).size.height * 0.3).toInt();

    int cardHeight =
        minCardHeight + Random().nextInt(maxCardHeight - minCardHeight);

    return Container(
      height: cardHeight.toDouble(),
      width: MediaQuery.of(context).size.width * 0.43,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ]),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            shadows: const [
              Shadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(1, 1),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
