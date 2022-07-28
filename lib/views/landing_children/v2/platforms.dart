import 'package:flutter/material.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class PlatformsPage extends StatelessWidget {
  const PlatformsPage({Key? key}) : super(key: key);
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
        final double width = c.maxWidth;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: width <= 800 ? 30 : width * .1,
            vertical: 50,
          ),
          child: AnimatedFadeWidget(
            slideFrom: const Offset(0, 1),
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < platforms.length; i++) ...{
                  Container(
                    width: 400,
                    height: 150,
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: Image.asset(
                        "assets/images/${platforms[i]}.png",
                        fit: BoxFit.contain,
                        color: Colors.white,
                      ),
                    ),
                  ),
                },
              ],
            ),
          ),
        );
      },
    );
  }
}
