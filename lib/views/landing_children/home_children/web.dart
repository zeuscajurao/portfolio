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
                          left: 30,
                          top: 90,
                          child: Image.asset(
                            "assets/images/iPad.png",
                            height: 750,
                          ),
                        ),
                        Positioned(
                          // top: 30,
                          right: 210,
                          bottom: 20,
                          child: Image.asset(
                            "assets/images/iPhone2.png",
                            height: 600,
                          ),
                        ),
                        Positioned(
                          right: 30,
                          bottom: 90,
                          child: Image.asset(
                            "assets/images/iPhone1.png",
                            height: 700,
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
                      "< Software Engineer >",
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
                      "Mobile - Web - Desktop\nApp Development",
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
