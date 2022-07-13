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
                    size: const Size(750, 750),
                  ),
                ),
              ),
              Positioned(
                top: -120,
                right: 210,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.green.shade300,
                        Colors.green.shade700,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                right: 650,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.blue.shade300,
                        Colors.blue.shade700,
                      ],
                    ),
                    shape: BoxShape.circle,
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: Colors.blue,
                    //     offset: Offset(3, 3),
                    //     blurRadius: 7,
                    //   )
                    // ],
                  ),
                ),
              ),
              Positioned(
                right: 50,
                bottom: 0,
                child: Image.network(
                  "https://pngimg.com/uploads/thinking_man/thinking_man_PNG11606.png",
                  height: 750,
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
                        "It's nice seeing you here checking my profile!",
                        style: TextStyle(
                          color: black.withOpacity(.8),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "I am a Mobile developer for ${DateTime.now().difference(DateTime(2019, 6, 7)).inDays ~/ 365} years, I can do HYBRID Mobile Applications\nand can also do Fullstack Web Development.",
                        style: TextStyle(
                          color: black.withOpacity(.8),
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
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
                      )
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 250,
              //   child: ,
              // ),
              Positioned(
                bottom: 40,
                child: SizedBox(
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
