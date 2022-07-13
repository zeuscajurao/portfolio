import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/semi_circle_painter.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);
  static final List<String> icons = [
    "assets/icons/instagram.png",
    "assets/icons/facebook.png",
    "assets/icons/linkedin.png",
  ];
  static final List<String> pl = [
    "dart",
    "php",
    "python",
    "java",
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) {
        final double height = constraint.maxHeight;
        final double width = constraint.maxWidth;
        return SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Positioned(
                bottom: -40,
                right: 0,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: CustomPaint(
                    painter: SemiCirclePainter(
                      color: Colors.red,
                    ),
                    size: const Size(550, 550),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 30,
                child: Container(
                  width: 450,
                  height: 700,
                  color: Colors.transparent,
                ),
              ),
              Positioned(
                top: 130,
                left: 260,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple.shade600,
                          Colors.purple.shade300
                        ],
                      ),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.purple,
                          offset: Offset(3, 3),
                          blurRadius: 7,
                        )
                      ]),
                ),
              ),
              Positioned(
                top: 180,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: width * .7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi! I'm Zeus\nNicole Cajurao",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                          height: 1,
                        ),
                      ),
                      Text(
                        "Software Developer",
                        style: TextStyle(
                          color: black.withOpacity(.5),
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "It's nice seeing you here checking my profile",
                        style: TextStyle(
                          color: black.withOpacity(.8),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "I am a Mobile developer for ${DateTime.now().difference(DateTime(2019, 6, 7)).inDays ~/ 365} years, I can do HYBRID Mobile Applications\nand can do also do Fullstack Web Development.",
                        style: TextStyle(
                          color: black.withOpacity(.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mastered\nTechnologies",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width * .7,
                      height: 50,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) => Image.asset(
                          "assets/images/${pl[index]}.png",
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                        separatorBuilder: (_, index) => const SizedBox(
                          width: 20,
                        ),
                        itemCount: pl.length,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40,
                child: SizedBox(
                  height: 60,
                  width: 180,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Center(
                        child: Image.asset(
                          icons[index],
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    separatorBuilder: (_, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: icons.length,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
