import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/constants.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';
import 'package:zeuscajurao/views/bubble_container/bubble.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);
  Future<void> hire() async {
    final Uri uri =
        Uri.parse("https://www.fiverr.com/users/zeuscajurao/seller_dashboard");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  static final Duration diff = DateTime.now().difference(DateTime(2019, 6, 7));
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final double w = c.maxWidth;
      return Container(
        color: light,
        padding: EdgeInsets.symmetric(
          horizontal: w <= 800 ? 30 : w * .1,
          // vertical: 30,
        ),
        child: LayoutBuilder(builder: (context, ccc) {
          final double www = ccc.maxWidth;
          return Stack(
            fit: StackFit.passthrough,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 140,
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.spaceBetween,
                  alignment: WrapAlignment.spaceBetween,
                  // spacing: ww <= 800 ? 10 : ww * .01,
                  // runSpacing: ww <= 800 ? 10 : ww * .01,
                  children: [
                    SizedBox(
                      // width: www <= 800 ? www : 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  www <= 800 ? 30 : www * .1
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: www <= 800 ? 30 : www * .1,
                            ),
                            child: LayoutBuilder(builder: (context, cc) {
                              final double ww = cc.maxWidth;
                              final double hh = cc.maxHeight;
                              return SizedBox(
                                width: ww <= 800 ? ww : 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: accent,
                                      ),
                                      child: const AnimatedFadeWidget(
                                        slideFrom: Offset(
                                          -1,
                                          0,
                                        ),
                                        child: Text(
                                          "SOFTWARE ENGINEER",
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    SizedBox(
                                      width: ww,
                                      child: AnimatedFadeWidget(
                                        slideFrom: const Offset(
                                          -1,
                                          0,
                                        ),
                                        duration: const Duration(
                                          milliseconds: 800,
                                        ),
                                        child: RichText(
                                          text: const TextSpan(
                                            text: "TURN YOUR INNOVATIVE ",
                                            style: TextStyle(
                                              color: white,
                                              // height: 1,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "IDEAS",
                                                style: TextStyle(
                                                  color: accent,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " TO REALITY",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    SizedBox(
                                      width: ww,
                                      child: AnimatedFadeWidget(
                                        slideFrom: const Offset(-1, 0),
                                        child: Text(
                                          "Solving your real-world problem with digital solutions.",
                                          style: TextStyle(
                                            color: white.withOpacity(.4),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 60,
                                    ),
                                    AnimatedFadeWidget(
                                      duration: const Duration(
                                        milliseconds: 750,
                                      ),
                                      slideFrom: const Offset(2.5, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: accent,
                                            width: 2,
                                          ),
                                        ),
                                        width: 100,
                                        child: MaterialButton(
                                          onPressed: () async {
                                            await hire();
                                          },
                                          padding: const EdgeInsets.all(20),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Hire me",
                                              style: TextStyle(
                                                color: accent,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: www <= 800 ? www : 500,
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    AnimatedFadeWidget(
                                      slideFrom: const Offset(0, -1),
                                      child: Text(
                                        "${diff.inDays ~/ 365}",
                                        style: const TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w400,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    AnimatedFadeWidget(
                                      slideFrom: const Offset(0, -1),
                                      child: Text(
                                        "YEARS\nEXPERIENCE",
                                        style: TextStyle(
                                          fontSize: 18,
                                          height: 1,
                                          fontWeight: FontWeight.w300,
                                          color: white.withOpacity(.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: AnimatedFadeWidget(
                                      slideFrom: const Offset(1, 0),
                                      child: RichText(
                                        textAlign: TextAlign.end,
                                        text: TextSpan(
                                          text: "SOFT",
                                          style: TextStyle(
                                            fontSize: 20,
                                            height: 1,
                                            fontWeight: FontWeight.w500,
                                            color: white.withOpacity(1),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "WARE ",
                                              style: TextStyle(
                                                color: accent.withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "DEV",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: accent.withOpacity(1),
                                              ),
                                            ),
                                            TextSpan(
                                              text: "ELOPMENT\n",
                                              style: TextStyle(
                                                color: white.withOpacity(1),
                                              ),
                                            ),
                                            TextSpan(
                                              text: "INDUSTRY",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700,
                                                color: white.withOpacity(.5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // child: Text(
                                    //   "SOFTWARE DEVELOPMENT\nINDUSTRY",
                                    //   textAlign: TextAlign.end,
                                    // style: TextStyle(
                                    //   fontSize: 18,
                                    //   height: 1,
                                    //   fontWeight: FontWeight.w600,
                                    //   color: white.withOpacity(.5),
                                    // ),
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: www <= 800 ? www : 600,
                      height: 760,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 10,
                            left: 25,
                            child: AnimatedFadeWidget(
                              slideFrom: const Offset(0, -1),
                              child: BubbleContainer(
                                size: 95,
                                padding: 30,
                                iconColor: Colors.green.shade400,
                                assetPath: "assets/icons/laravel_128_black.png",
                                boxShadow: BoxShadow(
                                  offset: const Offset(
                                    10,
                                    10,
                                  ),
                                  blurRadius: 20,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  colors: [
                                    dark,
                                    Colors.grey.shade900.withOpacity(.9),
                                  ],
                                ),
                              ),
                              height: 500,
                              width: 500,
                            ),
                          ),
                          Positioned(
                            bottom: 220,
                            right: 0,
                            child: AnimatedFadeWidget(
                              slideFrom: const Offset(1, 0),
                              child: BubbleContainer(
                                size: 130,
                                padding: 40,
                                iconColor: Colors.purple.shade400,
                                assetPath: "assets/icons/python.png",
                                boxShadow: BoxShadow(
                                  offset: const Offset(
                                    10,
                                    10,
                                  ),
                                  blurRadius: 20,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 180,
                            right: 40,
                            child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple.shade600,
                                )),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: AnimatedFadeWidget(
                                slideFrom: const Offset(1, 1),
                                duration: const Duration(milliseconds: 900),
                                child: Container(
                                  width: (www <= 800 ? www : 600),
                                  height: 700,
                                  color: Colors.red.withOpacity(0),
                                  child: Image.network(
                                    "https://snipstock.com/assets/cdn/png/57d4507294c838e6ef6222ac2031bcbc.png",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 20,
                            child: AnimatedFadeWidget(
                              slideFrom: const Offset(-1, 0),
                              child: BubbleContainer(
                                padding: 50,
                                size: 150,
                                iconColor: primary,
                                assetPath: "assets/icons/pl_dart.png",
                                boxShadow: BoxShadow(
                                  offset: const Offset(
                                    -20,
                                    20,
                                  ),
                                  blurRadius: 20,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 140,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade600,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(
                                        10,
                                        10,
                                      ),
                                      blurRadius: 20,
                                      color: Colors.black.withOpacity(.4),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: w,
                height: 70,
                child: AppBar(
                  leadingWidth: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: false,
                  title: AnimatedFadeWidget(
                    slideFrom: const Offset(0, -1),
                    child: RichText(
                      text: TextSpan(
                          text: "ZEUS",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: white.withOpacity(.5),
                            letterSpacing: -2,
                            height: 1,
                            fontSize: 22,
                          ),
                          children: [
                            TextSpan(
                              text: " CAJURAO",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: white.withOpacity(1),
                                // letterSpacing: -3,
                                // letterSpacing: 1,
                              ),
                            )
                          ]),
                    ),
                  ),
                  actions: [
                    AnimatedFadeWidget(
                      slideFrom: const Offset(0, -1),
                      child: TextButton.icon(
                        onPressed: () async {
                          if (await canLaunchUrl(Uri.parse(links[1]))) {
                            await launchUrl(Uri.parse(links[1]));
                          }
                        },
                        icon: Image.asset(
                          "assets/icons/github.png",
                          color: white,
                          width: 20,
                          height: 20,
                        ),
                        style: ButtonStyle(
                            splashFactory: NoSplash.splashFactory,
                            surfaceTintColor: MaterialStateProperty.resolveWith(
                              (states) => accent,
                            ),
                            foregroundColor: MaterialStateProperty.resolveWith(
                              (states) => white,
                            )),
                        label: const Text("Github"),
                      ),
                    ),
                    AnimatedFadeWidget(
                      slideFrom: const Offset(0, -1),
                      child: TextButton.icon(
                        onPressed: () async {
                          if (await canLaunchUrl(Uri.parse(links[0]))) {
                            await launchUrl(Uri.parse(links[0]));
                          }
                        },
                        icon: Image.asset(
                          "assets/icons/linkedin.png",
                          color: white,
                          width: 20,
                          height: 20,
                        ),
                        style: ButtonStyle(
                            splashFactory: NoSplash.splashFactory,
                            surfaceTintColor: MaterialStateProperty.resolveWith(
                              (states) => accent,
                            ),
                            foregroundColor: MaterialStateProperty.resolveWith(
                              (states) => white,
                            )),
                        label: const Text("LinkedIn"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      );
      // return Container(
      //   color: light,
      //   width: w,
      //   height: 750,
      //   child: Stack(
      //     children: const [
      //       BubbleContainer(
      //         iconColor: Colors.blue,
      //         assetPath: "assets/icons/python.png",
      //         boxShadow: BoxShadow(
      //           color: Colors.black45,
      //           blurRadius: 20,
      //           spreadRadius: 1,
      //           offset: Offset(
      //             -20,
      //             20,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    });
  }
}
