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
        return Column(
          children: [
            Container(
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
                                      milliseconds: 500 + ((index + 1) * 100)),
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
                                separatorBuilder: (_, index) => const SizedBox(
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
            Expanded(
              child: Container(
                width: width,
                padding: EdgeInsets.symmetric(
                  horizontal: width <= 800 ? 30 : width * .1,
                  vertical: 0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 300,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AnimatedFadeWidget(
                              slideFrom: const Offset(0, 1),
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Text(
                                  "${diff.inDays ~/ 365}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 325,
                                    height: .85,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white.withOpacity(.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const AnimatedFadeWidget(
                            slideFrom: Offset(0, 1),
                            duration: Duration(milliseconds: 700),
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "YEARS OF",
                                style: TextStyle(
                                  fontSize: 65,
                                  height: .6,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          AnimatedFadeWidget(
                            slideFrom: const Offset(0, 1),
                            duration: const Duration(milliseconds: 800),
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: RichText(
                                text: const TextSpan(
                                  text: "EXP",
                                  style: TextStyle(
                                    color: accent,
                                    fontSize: 270,
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
                          // Text("EXPERIENCE"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: AnimatedFadeWidget(
                                slideFrom: const Offset(0, -1),
                                child: RichText(
                                  text: TextSpan(
                                      text: "IN ",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(.1),
                                        fontSize: 60,
                                        height: .45,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Alumni",
                                      ),
                                      children: const [
                                        TextSpan(
                                          text: "SOFT",
                                          style: TextStyle(
                                            fontSize: 120,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "WARE",
                                          style: TextStyle(
                                            fontSize: 120,
                                            color: accent,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Expanded(
                              child: AnimatedFadeWidget(
                                slideFrom: const Offset(1, 0),
                                child: RichText(
                                  text: const TextSpan(
                                      text: "DEV",
                                      style: TextStyle(
                                        color: accent,
                                        fontSize: 180,
                                        height: .5,
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
                                      ]),
                                ),
                              ),
                            ),
                            Expanded(
                              child: AnimatedFadeWidget(
                                slideFrom: const Offset(0, 1),
                                child: RichText(
                                  text: const TextSpan(
                                      text: "INDUS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 110,
                                        height: .8,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Alumni",
                                      ),
                                      children: [
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

                            // RichText(
                            //   text: const TextSpan(
                            //       text: "INDUS",
                            //       style: TextStyle(
                            //         color: accent,
                            //         fontSize: 120,
                            //         height: .5,
                            //         fontWeight: FontWeight.w700,
                            //         fontFamily: "Alumni",
                            //       ),
                            //       children: [
                            //         TextSpan(
                            //           text: "TRY",
                            //           style: TextStyle(
                            //             color: Colors.white,
                            //           ),
                            //         ),
                            //       ]),
                            // ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // child: Stack(
                //   children: [
                //     // Positioned(
                //     //   top: -10,
                //     //   child: Column(
                //     //     children: [
                // AnimatedFadeWidget(
                //   slideFrom: const Offset(0, 1),
                //   child: Text(
                //     "${diff.inDays ~/ 365}",
                //     style: TextStyle(
                //       fontSize: 400,
                //       fontWeight: FontWeight.w900,
                //       color: Colors.white.withOpacity(.5),
                //     ),
                //   ),
                // )
                //     //     ],
                //     //   ),
                //     // )
                //   ],
                // ),
                // child: Row(
                //   children: [
                //     Expanded(
                //       flex: 2,
                //       child: Container(
                //         // color: Colors.blue,
                //         child: Stack(
                //           // alignment: Alignment.center,
                //           children: [
                //             Positioned(
                //               top: -90,
                // child: AnimatedFadeWidget(
                //   slideFrom: const Offset(0, 1),
                //   child: Text(
                //     "${diff.inDays ~/ 365}",
                //     style: TextStyle(
                //       fontSize: 400,
                //       fontWeight: FontWeight.w900,
                //       color: Colors.white.withOpacity(.5),
                //     ),
                //   ),
                // ),
                //             ),
                //             Positioned(
                //               top: 65,
                //               left: 180,
                //               child: AnimatedFadeWidget(
                //                 slideFrom: const Offset(0, 1),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       "Years Of",
                //                       style: TextStyle(
                //                         fontSize: 150,
                //                         height: .55,
                //                         fontWeight: FontWeight.w900,
                //                         color: Colors.white.withOpacity(.2),
                //                       ),
                //                     ),
                //                     Row(
                //                       children: [
                // RichText(
                //   text: const TextSpan(
                //     text: "EXP",
                //     style: TextStyle(
                //       color: accent,
                //       fontSize: 270,
                //       height: .56,
                //       fontFamily: "Alumni",
                //       fontWeight: FontWeight.w900,
                //     ),
                //     children: [
                //       TextSpan(
                //         text: "ERIENCE",
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                //                         const SizedBox(
                //                           width: 10,
                //                         ),
                //                         Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.end,
                //                           children: [
                //                             Text(
                //                               "In Software".toUpperCase(),
                //                               style: TextStyle(
                //                                 color: Colors.white
                //                                     .withOpacity(.5),
                //                                 height: 1,
                //                                 fontSize: 35,
                //                               ),
                //                             ),
                //                             Text(
                //                               "DEVELOPMENT INDUSTRY"
                //                                   .toUpperCase(),
                //                               style: TextStyle(
                //                                 fontSize: 45,
                //                                 height: .7,
                //                                 fontWeight: FontWeight.w700,
                //                                 color: Colors.white
                //                                     .withOpacity(.5),
                //                               ),
                //                             ),
                //                           ],
                //                         )
                //                       ],
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             // Positioned(child: child)
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),
            )
          ],
        );
      },
    );
  }
}
