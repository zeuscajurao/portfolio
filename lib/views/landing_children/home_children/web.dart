import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/constants.dart';
import 'package:zeuscajurao/global/semi_circle_painter.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

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
            // alignment: Alignment.center,
            children: [
              Positioned(
                right: 0,
                child: SizedBox(
                  height: height,
                  width: 850,
                  child: LayoutBuilder(builder: (context, cc) {
                    final double fHeight = cc.maxHeight;
                    final double fWidth = cc.maxWidth;
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          // right: 150,
                          // top: (height * .5) - 250,
                          child: ShaderMask(
                            shaderCallback: (Rect bound) => RadialGradient(
                              colors: [
                                Colors.red.shade400,
                                Colors.red.shade900,
                              ],
                            ).createShader(bound),
                            child: Container(
                              width: 550,
                              height: 550,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 160,
                          top: 60,
                          // bottom: (height * .5) - 360,
                          child: Container(
                            width: 220,
                            height: 220,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.blue.shade400,
                                  Colors.blue.shade900,
                                ],
                              ),
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(color: white, spreadRadius: 10)
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 180,
                          // bottom: (height * .5) - 360,
                          child: Container(
                            width: 270,
                            height: 270,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.green.shade400,
                                  Colors.green.shade900,
                                ],
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: white,
                                  spreadRadius: 10,
                                )
                              ],
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 300,
                          top: 50,
                          child: Image.asset(
                            "assets/images/iphone.png",
                            height: 520,
                          ),
                        ),
                        Positioned(
                          bottom: 100,
                          left: 0,
                          child: Image.asset(
                            "assets/images/desktop.png",
                            height: 400,
                          ),
                        ),
                        Positioned(
                          top: 120,
                          right: -150,
                          child: Image.asset(
                            "assets/images/android-phone.png",
                            height: 520,
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          right: 0,
                          child: Image.asset(
                            "assets/images/macbook.png",
                            height: 300,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              Positioned(
                left: 50,
                top: (height * .42),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Zeus Nicole",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w800,
                        fontSize: 90,
                        height: .75,
                      ),
                    ),
                    const Text(
                      "Cajurao",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w700,
                        fontSize: 100,
                        height: .75,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "< Software Developer >",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: black.withOpacity(.5),
                        fontWeight: FontWeight.w300,
                        fontSize: 50,
                        height: .75,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Software Development Done Right!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        height: .75,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mobile - Web - Desktop App Development",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: black.withOpacity(.7),
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 55,
                        child: const Center(
                          child: Text(
                            "HIRE ME",
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) => IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () async {
                            if (await canLaunchUrl(Uri.parse(links[index]))) {
                              await launchUrl(Uri.parse(links[index]));
                            }
                          },
                          icon: Center(
                            child: Image.asset(
                              icons[index],
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        separatorBuilder: (_, index) => const SizedBox(
                          width: 5,
                        ),
                        itemCount: icons.length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
