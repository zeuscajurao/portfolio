import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/constants.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class HomePagev2 extends StatelessWidget {
  const HomePagev2({Key? key}) : super(key: key);
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
  Future<void> hire() async {
    final Uri uri =
        Uri.parse("https://www.fiverr.com/users/zeuscajurao/seller_dashboard");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final double width = c.maxWidth;
      return Container(
        color: light,
        padding: EdgeInsets.symmetric(
          horizontal: width <= 800 ? 30 : width * .1,
          vertical: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: width,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 65,
                    height: 65,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "Alnaugh",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Alumni",
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                          TextSpan(
                              text: "Tech",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ]),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: c.maxWidth,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  AnimatedFadeWidget(
                    slideFrom: const Offset(-1, 0),
                    child: SizedBox(
                      width: 400,
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
                          if (width >= 775) ...{
                            const SizedBox(
                              height: 70,
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
                  ),
                  SizedBox(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (width > 895) ...{
                          const SizedBox(
                            height: 30,
                          ),
                        },
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
                            width: 100,
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
                            "And let us work together\nas a team".toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
