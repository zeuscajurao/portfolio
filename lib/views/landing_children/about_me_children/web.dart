import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({Key? key}) : super(key: key);
  static final Duration diff = DateTime.now().difference(DateTime(2019, 6, 7));
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint) {
      final double width = constraint.maxWidth;
      final double height = constraint.maxHeight;
      return SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "WOW, A WHOLE PAGE JUST ABOUT ME!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w700,
                  fontSize: 70,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      black.withOpacity(.8),
                      black,
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: width,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: 400,
                        height: 450,
                        margin: const EdgeInsets.only(bottom: 20),
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: (width - 700) - 40 <= 450
                          ? width
                          : (width - 700) - 40,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 4,
                                ),
                              ),
                            ),
                            child: const Text(
                              "Me talking about myself",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                                color: black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(60),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  (diff.inDays ~/ 365).toString(),
                                  style: const TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 75,
                                  ),
                                ),
                                const Text(
                                  "YEARS",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${diff.inDays} days",
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.w700,
                              fontSize: 55,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${diff.inHours} hours",
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.w700,
                              fontSize: 45,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${diff.inMinutes} minutes",
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.w700,
                              fontSize: 35,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${diff.inSeconds} seconds",
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "spent creating and building softwares",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: black.withOpacity(.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      );
    });
  }
}
