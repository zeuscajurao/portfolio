import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class PlatformV2Page extends StatelessWidget {
  const PlatformV2Page({Key? key}) : super(key: key);
  static final List<String> platforms = [
    "flutter",
    "laravel",
    "python",
    "unity",
    "java",
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, c) {
        final double w = c.maxWidth;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: w <= 800 ? 30 : w * .1,
          ),
          child: AnimatedFadeWidget(
            slideFrom: const Offset(0, 1),
            child: Center(
              child: SingleChildScrollView(
                child: Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i < platforms.length; i++) ...{
                      Container(
                        width: 370,
                        // height: 150,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 10,
                        ),
                        child: Image.asset(
                          "assets/images/${platforms[i]}.png",
                          fit: BoxFit.contain,
                          color: white.withOpacity(.5),
                        ),
                      )
                    },
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
