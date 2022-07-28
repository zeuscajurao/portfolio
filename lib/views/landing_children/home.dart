import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/constants.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.isMobile}) : super(key: key);
  final bool isMobile;
  static final Duration diff = DateTime.now().difference(DateTime(2019, 6, 7));
  Future<void> hire() async {
    final Uri uri =
        Uri.parse("https://www.fiverr.com/users/zeuscajurao/seller_dashboard");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Widget intro(bool isMobile) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedFadeWidget(
            slideFrom: const Offset(2, 0),
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
                  "Introduction",
                  style: TextStyle(
                    color: white.withOpacity(.5),
                    fontSize: isMobile ? 18 : 20,
                  ),
                )
              ],
            ),
          ),
          AnimatedFadeWidget(
            slideFrom: const Offset(1, 0),
            duration: const Duration(milliseconds: 700),
            child: RichText(
              text: TextSpan(
                text: "Web ",
                style: TextStyle(
                  fontSize: isMobile ? 22 : 30,
                  color: white,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  const TextSpan(
                    text: " / ",
                    style: TextStyle(
                      color: accent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text: "Mobile Developer,\nbased in the\n",
                  ),
                  TextSpan(
                    text: "PHILIPPINES",
                    style: TextStyle(
                      color: accent,
                      fontWeight: FontWeight.w700,
                      fontSize: isMobile ? 27 : 35,
                    ),
                  ),
                  const TextSpan(
                    text: ".",
                  ),
                ],
              ),
            ),
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) {
        final double width = constraint.maxWidth;
        final double height = constraint.maxHeight;
        return Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                color: light,
                width: width,
                height: 700,
                padding: EdgeInsets.symmetric(
                  horizontal: width <= 800 ? 30 : width * .1,
                ),
                child: Stack(
                  children: [
                    if (width >= 775) ...{
                      Positioned(
                        top: 250,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            intro(false),
                            const SizedBox(
                              height: 40,
                            ),
                            AnimatedFadeWidget(
                              duration: const Duration(
                                milliseconds: 750,
                              ),
                              slideFrom: const Offset(1, 0),
                              child: Text(
                                "Turning your innovative ideas into reality.\nSolving your real-world problems via digital solutions!",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            AnimatedFadeWidget(
                              duration: const Duration(
                                milliseconds: 750,
                              ),
                              slideFrom: const Offset(2.5, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: accent,
                                    width: 2,
                                  ),
                                ),
                                child: MaterialButton(
                                  onPressed: () async {
                                    await hire();
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Hire me",
                                      style: TextStyle(
                                        color: accent,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedFadeWidget(
                              duration: const Duration(
                                milliseconds: 760,
                              ),
                              slideFrom: const Offset(1.5, 0),
                              child: Text(
                                "And let us work together\nas a team"
                                    .toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    },
                    Positioned(
                      top: 250,
                      child: AnimatedFadeWidget(
                        slideFrom: const Offset(-1, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "ZEUS NICOLE",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w800,
                                fontSize: 90,
                                height: .75,
                              ),
                            ),
                            const Text(
                              "CAJURAO",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: accent,
                                fontWeight: FontWeight.w800,
                                fontSize: 95,
                                height: .75,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 60,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: accent,
                              ),
                            ),
                            if (width < 775) ...{
                              const SizedBox(
                                height: 40,
                              ),
                              intro(true),
                              const SizedBox(
                                height: 10,
                              ),
                              AnimatedFadeWidget(
                                duration: const Duration(
                                  milliseconds: 750,
                                ),
                                slideFrom: const Offset(2.5, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () async {
                                      await hire();
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Hire me",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            } else ...{
                              const SizedBox(
                                height: 60,
                              ),
                            },
                            SizedBox(
                              height: 60,
                              width: 400,
                              child: Center(
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, index) => AnimatedFadeWidget(
                                    duration: Duration(
                                        milliseconds:
                                            500 + ((index + 1) * 100)),
                                    slideFrom: Offset(-(index).toDouble(), -1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(0),
                                      onPressed: () async {
                                        if (await canLaunchUrl(
                                            Uri.parse(links[index]))) {
                                          await launchUrl(
                                              Uri.parse(links[index]));
                                        }
                                      },
                                      icon: Center(
                                        child: Image.asset(
                                          icons[index],
                                          width: 30,
                                          color: white.withOpacity(.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  separatorBuilder: (_, index) =>
                                      const SizedBox(
                                    width: 5,
                                  ),
                                  itemCount: icons.length,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 700,
              child: Container(
                width: width,
                height: 270,
                // color: Colors.red,
                padding: EdgeInsets.symmetric(
                  horizontal: width <= 800 ? 30 : width * .1,
                  vertical: 0,
                ),
                child: LayoutBuilder(builder: (context, cc) {
                  final double cw = cc.maxWidth;
                  return Stack(
                    children: [
                      if (width >= 650) ...{
                        Positioned(
                          left: 0,
                          bottom: 60,
                          // bottom: 0,
                          child: AnimatedFadeWidget(
                            slideFrom: const Offset(0, -1),
                            child: Text(
                              "${diff.inDays ~/ 365}",
                              style: TextStyle(
                                fontSize: 220,
                                fontWeight: FontWeight.w900,
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 42,
                          child: AnimatedFadeWidget(
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
                              )),
                        ),
                        Positioned(
                          bottom: 0,
                          child: AnimatedFadeWidget(
                            slideFrom: const Offset(0, 1),
                            duration: const Duration(milliseconds: 800),
                            child: RichText(
                              text: const TextSpan(
                                text: "EXP",
                                style: TextStyle(
                                  color: accent,
                                  fontSize: 70,
                                  height: .7,
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
                        ),
                        // Positioned(
                        //   left: 0,
                        //   child: SizedBox(
                        //     width: 200,
                        //     height: 300,
                        //     child: Stack(
                        //       alignment: Alignment.center,
                        //       children: [
                        //         Text(
                        //           "${diff.inDays ~/ 365}",
                        //           textAlign: TextAlign.left,
                        // style: TextStyle(
                        //   fontSize: 300,
                        //   fontWeight: FontWeight.w900,
                        //   color: Colors.white.withOpacity(.5),
                        // ),
                        //         ),
                        //         Text(
                        //           "Years",
                        //           style: TextStyle(
                        //             fontSize: 300,
                        //             fontWeight: FontWeight.w900,
                        //             color: Colors.white.withOpacity(.5),
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      } else ...{
                        Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: AnimatedFadeWidget(
                                      slideFrom: const Offset(0, -1),
                                      child: Text(
                                        "${diff.inDays ~/ 365}",
                                        style: TextStyle(
                                          fontSize: 180,
                                          // fontFamily: "",
                                          height: 1,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white.withOpacity(.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: AnimatedFadeWidget(
                                              slideFrom: const Offset(0, -1),
                                              duration: const Duration(
                                                  milliseconds: 700),
                                              child: RichText(
                                                text: TextSpan(
                                                  text: "years ".toUpperCase(),
                                                  style: TextStyle(
                                                    fontFamily: "Alumni",
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.white
                                                        .withOpacity(1),
                                                    fontSize: 65,
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
                                              )),
                                        ),
                                        Expanded(
                                            child: AnimatedFadeWidget(
                                          slideFrom: const Offset(0, 1),
                                          duration:
                                              const Duration(milliseconds: 800),
                                          child: RichText(
                                            text: const TextSpan(
                                              text: "EXP",
                                              style: TextStyle(
                                                color: accent,
                                                fontSize: 65,
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
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: FittedBox(
                                        child: AnimatedFadeWidget(
                                          slideFrom: const Offset(0, -1),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "IN ",
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(.1),
                                                  fontSize: cw >= 900 ? 60 : 45,
                                                  height: 1,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Alumni",
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: "SOFT",
                                                    style: TextStyle(
                                                      fontSize:
                                                          cw >= 900 ? 120 : 80,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "WARE",
                                                    style: TextStyle(
                                                      fontSize:
                                                          cw >= 900 ? 120 : 80,
                                                      color: accent,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: FittedBox(
                                          child: AnimatedFadeWidget(
                                            slideFrom: const Offset(1, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "DEV",
                                                style: TextStyle(
                                                  color: accent,
                                                  fontSize:
                                                      cw >= 900 ? 150 : 110,
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
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: FittedBox(
                                            child: AnimatedFadeWidget(
                                              slideFrom: const Offset(0, 1),
                                              child: RichText(
                                                text: TextSpan(
                                                    text: "INDUS",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          cw >= 900 ? 110 : 70,
                                                      height: 1,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                          ),
                                        )),
                                  ],
                                )),
                          ],
                        )
                      },
                      if (width >= 700) ...{
                        Positioned(
                          right: 0,
                          child: AnimatedFadeWidget(
                            slideFrom: const Offset(0, -1),
                            child: RichText(
                              text: TextSpan(
                                  text: "IN ",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.1),
                                    fontSize: cw >= 900 ? 60 : 45,
                                    height: cw >= 900 ? 1 : 1.5,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Alumni",
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "SOFT",
                                      style: TextStyle(
                                        fontSize: cw >= 900 ? 120 : 80,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "WARE",
                                      style: TextStyle(
                                        fontSize: cw >= 900 ? 120 : 80,
                                        color: accent,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 70,
                          child: AnimatedFadeWidget(
                            slideFrom: const Offset(1, 0),
                            child: RichText(
                              text: TextSpan(
                                text: "DEV",
                                style: TextStyle(
                                  color: accent,
                                  fontSize: cw >= 900 ? 150 : 110,
                                  height: cw >= 900 ? 1 : 1.1,
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
                        ),
                        Positioned(
                          right: 0,
                          top: 170,
                          child: AnimatedFadeWidget(
                            slideFrom: const Offset(0, 1),
                            child: RichText(
                              text: TextSpan(
                                  text: "INDUS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: cw >= 900 ? 110 : 70,
                                    height: cw >= 900 ? 1 : .7,
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
                        ),
                      },
                    ],
                  );
                }),
              ),
            )
          ],
        );
      },
    );
  }
}
