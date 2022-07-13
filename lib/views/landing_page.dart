import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/views/landing_children/mobile.dart';
import 'package:zeuscajurao/views/landing_children/web.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static final List<String> _tabs = [
    "HOME",
    "CONTACT",
    "MY PORTFOLIO",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraint) {
          final double height = constraint.maxHeight;
          final double width = constraint.maxWidth;
          return SizedBox(
            width: width,
            height: height,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width < 800 ? 30 : width * .1,
              ),
              child: LayoutBuilder(
                builder: (context, ctrnt) {
                  final double cHeight = ctrnt.maxHeight;
                  final double cWidth = ctrnt.maxWidth;
                  return Column(
                    children: [
                      SizedBox(
                        width: cWidth,
                        // height: 100,
                        child: Wrap(
                          runAlignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            ///TITLE
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              width: cWidth <= 800 ? cWidth : 200,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: cWidth <= 800
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset("assets/icons/logo.png"),
                                  ),
                                  Image.asset(
                                    "assets/icons/text.png",
                                    height: 30,
                                    color: black,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: cWidth <= 800 ? cWidth : 600,
                              height: 60,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: _tabs
                                          .map(
                                            (e) => Expanded(
                                              child: MaterialButton(
                                                onPressed: () {},
                                                child: Center(
                                                  child: Text(
                                                    e,
                                                    style: const TextStyle(
                                                      height: 1,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "HIRE ME",
                                          style: TextStyle(
                                            height: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            ///Content
                          ],
                        ),
                      ),
                      Expanded(
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 400),
                          child: cWidth <= 800
                              ? const MobileView()
                              : const WebView(),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
