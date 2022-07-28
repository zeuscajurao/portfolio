import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class ExpPage extends StatelessWidget {
  const ExpPage({Key? key}) : super(key: key);
  static final Duration diff = DateTime.now().difference(DateTime(2019, 6, 7));
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final double width = c.maxWidth;
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: width <= 800 ? 30 : width * .1,
          vertical: 20,
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,
          children: [
            // Text(width.toString()),
            SizedBox(
              width: width > 895 ? 350 : width,
              // height: 350,
              child: Column(
                crossAxisAlignment: width < 1472
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedFadeWidget(
                    slideFrom: const Offset(0, -1),
                    child: Text(
                      "${diff.inDays ~/ 365}",
                      style: TextStyle(
                        fontSize: 250,
                        height: 1,
                        fontWeight: FontWeight.w900,
                        color: Colors.white.withOpacity(.5),
                      ),
                    ),
                  ),
                  AnimatedFadeWidget(
                    slideFrom: const Offset(0, -1),
                    duration: const Duration(milliseconds: 700),
                    child: RichText(
                      text: TextSpan(
                        text: "years ".toUpperCase(),
                        style: TextStyle(
                          fontFamily: "Alumni",
                          fontWeight: FontWeight.w800,
                          color: Colors.white.withOpacity(1),
                          fontSize: 70,
                        ),
                        children: [
                          TextSpan(
                            text: "of".toUpperCase(),
                            style: const TextStyle(
                              color: accent,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  AnimatedFadeWidget(
                    slideFrom: const Offset(0, 1),
                    duration: const Duration(milliseconds: 800),
                    child: RichText(
                      text: const TextSpan(
                        text: "EXP",
                        style: TextStyle(
                          color: accent,
                          fontSize: 70,
                          height: 1,
                          fontFamily: "Alumni",
                          fontWeight: FontWeight.w900,
                        ),
                        children: [
                          TextSpan(
                            text: "ERIENCE",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: width < 1300 ? width : width * .55,
                // height: 350,
                constraints: const BoxConstraints(
                  minWidth: 400,
                  // maxWidth: 700,
                ),
                // color: Colors.blue,
                child: LayoutBuilder(builder: (context, c) {
                  final double cw = c.maxWidth;
                  return Column(
                    crossAxisAlignment: cw < 817
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.end,
                    children: [
                      // Text(cw.toString()),
                      AnimatedFadeWidget(
                        slideFrom: const Offset(0, -1),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "IN ",
                              style: TextStyle(
                                color: Colors.white.withOpacity(.1),
                                fontSize: cw >= 900 ? 60 : 55,
                                height: 1,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Alumni",
                              ),
                              children: [
                                TextSpan(
                                  text: "SOFT",
                                  style: TextStyle(
                                    fontSize: cw >= 900 ? 120 : 110,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: "WARE",
                                  style: TextStyle(
                                    fontSize: cw >= 900 ? 120 : 110,
                                    color: accent,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      AnimatedFadeWidget(
                        slideFrom: const Offset(1, 0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "DEV",
                            style: TextStyle(
                              color: accent,
                              fontSize: cw >= 900 ? 150 : 140,
                              height: 1,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Alumni",
                            ),
                            children: const [
                              TextSpan(
                                text: "ELOPMENT",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedFadeWidget(
                        slideFrom: const Offset(0, 1),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "INDUS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: cw >= 900 ? 100 : 70,
                                height: 1,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Alumni",
                              ),
                              children: const [
                                TextSpan(
                                  text: "TRY",
                                  style: TextStyle(
                                    color: accent,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  );
                })),
          ],
        ),
      );
    });
  }
}
