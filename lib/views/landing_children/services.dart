import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);
  static final List<String> platforms = [
    "flutter",
    "laravel",
    "python",
    "unity",
    "java",
  ];
  static final List<Map> offers = [
    {
      "title": "Mobile",
      "description":
          "HYBRID (cross-platform) mobile application, for your busines, or personal use. Let's make your business portable and comfortable.",
      "level": "expert",
      "image": "assets/images/mobile-app.png",
    },
    {
      "title": "Web",
      "description":
          "Cutting edge web application for e-commerce or personal website (just like this).",
      "level": "intermediate",
      "image": "assets/images/web-app.png",
    },
    {
      "title": "Desktop",
      "description":
          "No more sharp edges! Build a material designed Desktop application.",
      "level": "intermediate",
      "image": "assets/images/desktop-app.png",
    },
    {
      "title": "API",
      "description":
          "Need to connect your development to other devices? worry not, I offer the waiter for you!",
      "level": "intermediate",
      "image": "assets/images/api-dev.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint) {
      final double width = constraint.maxWidth;
      return Column(
        children: [
          Container(
            width: width,
            height: 650,
            color: light,
            padding: EdgeInsets.symmetric(
              horizontal: width <= 800 ? 30 : width * .1,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 145,
                ),
                AnimatedFadeWidget(
                  slideFrom: const Offset(-1, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 2,
                        color: white.withOpacity(.6),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Offered Services",
                        style: TextStyle(
                          color: white.withOpacity(.5),
                          fontSize: width <= 775 ? 18 : 20,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        for (int i = 0; i < offers.length; i++) ...{
                          AnimatedFadeWidget(
                            duration: Duration(milliseconds: 500 + (i * 100)),
                            slideFrom: Offset(-(i + 1).toDouble(), 0),
                            child: SizedBox(
                              width: 350,
                              height: 430,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                color: dark,
                                shadowColor: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(25),
                                  child: LayoutBuilder(builder: (context, cc) {
                                    final double ccwd = cc.maxWidth;
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          offers[i]['title'],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 45,
                                              height: 1),
                                        ),
                                        RichText(
                                          text: const TextSpan(
                                            text: "DEV",
                                            style: TextStyle(
                                              color: accent,
                                              fontSize: 55,
                                              height: .75,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Alumni",
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "ELOPMENT",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        AnimatedFadeWidget(
                                          duration: Duration(
                                              milliseconds: 700 + (i * 100)),
                                          slideFrom:
                                              Offset((i + 1).toDouble(), 0),
                                          child: Container(
                                            width: ccwd,
                                            height: 180,
                                            decoration: BoxDecoration(
                                              color: light,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  offers[i]['image'],
                                                ),
                                              ),
                                              boxShadow: const [
                                                BoxShadow(
                                                  offset: Offset(2, 2),
                                                  blurRadius: 3,
                                                  color: Color.fromARGB(
                                                      255, 7, 7, 14),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          offers[i]['description'],
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(.5),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              height: 1),
                                        ),
                                        const Spacer(),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: "LEVEL - ",
                                            style: const TextStyle(
                                              fontFamily: "Alumni",
                                              letterSpacing: 1.2,
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "${offers[i]['level']}"
                                                    .toUpperCase(),
                                                style: const TextStyle(
                                                  color: accent,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                              ),
                            ),
                          )
                        },
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width <= 800 ? 30 : width * .1,
                ),
                child: SingleChildScrollView(
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
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
