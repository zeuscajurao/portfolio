import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class ServicesV2Page extends StatelessWidget {
  const ServicesV2Page({Key? key}) : super(key: key);
  static final List<Map> _content = [
    {
      "contents": [
        {
          "description":
              "Hybrid Fitness App example, deployed and published internationally. I can make your content portable and mainstream!",
          "image": "assets/images/mockups/shapeyou/main.png",
        },
        {
          "description":
              "Hybrid Car Rental & Reservation App, built with aesthetic design.",
          "image": "assets/images/mockups/car/main.png",
        }
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, c) {
      final double w = c.maxWidth;
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: w <= 800 ? 30 : w * .1,
        ),
        color: light,
        child: LayoutBuilder(builder: (context, cc) {
          final double ww = cc.maxWidth;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedFadeWidget(
                slideFrom: const Offset(-1, 0),
                child: Row(
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                        color: white.withOpacity(.5),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 25,
                      height: 2,
                      color: white.withOpacity(.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const AnimatedFadeWidget(
                slideFrom: Offset(1, 0),
                duration: Duration(
                  milliseconds: 750,
                ),
                child: Text(
                  "Hi, you might want to check these!",
                  style: TextStyle(
                    color: white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: ww,
                child: Wrap(
                  children: [
                    ..._content.map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...e['contents'].map(
                              (f) {
                                final int index = e['contents'].indexOf(f);
                                return AnimatedFadeWidget(
                                  slideFrom: Offset(index % 2 == 0 ? 1 : -1, 0),
                                  child: Row(
                                    children: [
                                      if (index % 2 == 0) ...{
                                        SizedBox(
                                          height: ww > 900 ? 450 : 300,
                                          child: Image.asset(f['image']),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      },
                                      Expanded(
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 300,
                                            minWidth: 200,
                                          ),
                                          child: Text(
                                            f['description'],
                                            textAlign: index % 2 == 0
                                                ? TextAlign.left
                                                : TextAlign.right,
                                            style: TextStyle(
                                              color: white.withOpacity(.5),
                                              fontSize: 18.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (index % 2 != 0) ...{
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          height: ww > 900 ? 450 : 300,
                                          child: Image.asset(f['image']),
                                        ),
                                      },
                                    ],
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        }),
      );
    });
  }
}
