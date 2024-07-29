import 'dart:math';

// import 'package:amanah_optikal/common/constant.dart';
import 'package:flutter/material.dart';

class RandomImageWidget extends StatefulWidget {
  const RandomImageWidget({super.key});

  @override
  State<RandomImageWidget> createState() => _RandomImageWidgetState();
}

class _RandomImageWidgetState extends State<RandomImageWidget> {
  final random = Random();

  double getRandomPosition(double max) {
    return random.nextDouble() * max;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: getRandomPosition(1),
          top: getRandomPosition(1),
          child: Image.asset(
            width: 100,
            height: 100,
            "assets/png/abstrak_random_icon.png",
          ),
        ),
      ],
    );
  }
}
