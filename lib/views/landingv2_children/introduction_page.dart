import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);
  static final List<Map> contents = [
    {
      "title": "MOBILE",
      "description": "Making your business/hobby more portable and accessible.",
      "icon": const Icon(
        Icons.phone_android_rounded,
        color: accent,
      ),
      "level": "EXPERT",
    },
    {
      "title": "API",
      "description":
          "Connect and process information from user to database or vice-versa.",
      "icon": const Icon(
        Icons.api_outlined,
        color: accent,
      ),
      "level": "EXPERT",
    },
    {
      "title": "WEB",
      "description":
          "Cutting edge web application for e-commerce or personal website (just like this).",
      "icon": const Icon(
        Icons.web_outlined,
        color: accent,
      ),
      "level": "INTERMEDIATE",
    },
    {
      "title": "DESKTOP",
      "description":
          "No more sharp edges! Build a material designed Desktop application.",
      "icon": const Icon(
        Icons.desktop_mac,
        color: accent,
      ),
      "level": "INTERMEDIATE",
    },
  ];
  static final Duration diff = DateTime.now().difference(DateTime(2019, 6, 7));
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, c) {
        final double w = c.maxWidth;
        return Container(
          color: dark,
          padding: EdgeInsets.symmetric(
            horizontal: w <= 800 ? 30 : w * .1,
            vertical: 90,
          ),
          width: w,
          child: LayoutBuilder(builder: (context, cc) {
            final double ww = cc.maxWidth;
            return Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.spaceBetween,
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                SizedBox(
                  width: ww <= 800 ? ww : 500,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) => AnimatedFadeWidget(
                      slideFrom: const Offset(-1, 0),
                      duration: Duration(
                          milliseconds: 600 + (((index + 1) * 50) + 100)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: light,
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.all(0),
                                trailing: contents[index]['icon'],
                                title: Text(
                                  contents[index]['title'],
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: accent,
                                  ),
                                ),
                                subtitle: Text(
                                  contents[index]['description'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: white.withOpacity(1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "${contents[index]['level']} LEVEL",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: white.withOpacity(.5),
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (_, index) => Divider(
                      color: white.withOpacity(.5),
                    ),
                    itemCount: contents.length,
                  ),
                ),
                SizedBox(
                  width: ww <= 800 ? ww : 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedFadeWidget(
                        slideFrom: const Offset(1, 0),
                        child: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 2,
                              color: white.withOpacity(.5),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Introduction",
                              style: TextStyle(
                                color: white.withOpacity(.5),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const AnimatedFadeWidget(
                        slideFrom: Offset(1, 0),
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        child: Text(
                          "Hello! I'm Zeus Nicole Cajurao",
                          style: TextStyle(
                            color: white,
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const AnimatedFadeWidget(
                        slideFrom: Offset(1, 0),
                        duration: Duration(
                          milliseconds: 850,
                        ),
                        child: Text(
                          "You cannot create the perfect application if your passion in software engineering/development is not touching the cloud.",
                          style: TextStyle(
                            color: white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      AnimatedFadeWidget(
                        slideFrom: const Offset(1, 0),
                        duration: const Duration(
                          milliseconds: 950,
                        ),
                        child: Text(
                          "${diff.inDays ~/ 365} years ago, I got my first job after I graduated from the university which is mobile developer/engineer, it was thrilling in my part since in college I never/didn't get the chance to develop things since Computer Science focuses more on algorithms and computations so this is a new world to me (not that I dont know anything), I strived and learned from the master of development, the \"God of Development\", StackOverflow, I learned new languages, techniques, and especially experience by that I also unlocked new skills such as design and web/api development.",
                          style: TextStyle(
                            color: white.withOpacity(.5),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        );
      },
    );
  }
}
