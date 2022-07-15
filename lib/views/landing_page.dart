import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/constants.dart';
import 'package:zeuscajurao/global/scrollable_pageview.dart';
import 'package:zeuscajurao/views/landing_children/about_me.dart';
import 'package:zeuscajurao/views/landing_children/bloc/body_child.dart';
import 'package:zeuscajurao/views/landing_children/bloc/stream_page.dart';
import 'package:zeuscajurao/views/landing_children/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static final BodyChild _vm = BodyChild.instance;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static final StreamPage _vr = StreamPage.instance;
  static final List<String> _tabs = [
    "assets/icons/home.png",
    "assets/icons/user.png",
    "assets/icons/portfolio.png",
  ];
  static final List<Widget> _contents = [
    const HomePage(),
    const AboutMe(),
    Container(
      color: Colors.blue,
    ),
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
                horizontal: width < 700 ? 30 : width * .05,
              ),
              child: Row(
                children: [
                  StreamBuilder<int>(
                      stream: _vr.stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasError || !snapshot.hasData) {
                          return Container();
                        }
                        final int page = snapshot.data!;
                        return SizedBox(
                          width: 70,
                          height: height,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Center(
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    itemBuilder: (_, index) => IconButton(
                                      onPressed: () {
                                        _vr.update(index);
                                        // setState(() {
                                        //   currentPage = index;
                                        // });
                                      },
                                      icon: Image.asset(
                                        _tabs[index],
                                        color:
                                            page == index ? Colors.blue : black,
                                      ),
                                    ),
                                    separatorBuilder: (_, index) =>
                                        const SizedBox(
                                      height: 20,
                                    ),
                                    itemCount: _tabs.length,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 20,
                                left: 10,
                                right: 10,
                                child: Image.asset(
                                  "assets/icons/logo.png",
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  Expanded(
                    child: ScrollablePageView(
                      children: _contents,
                    ),
                  ),
                  SizedBox(
                    width: width <= 950 ? 0 : 70,
                    height: height,
                  ),
                ],
              ),
            ),
            // child: Padding(
            // padding: EdgeInsets.symmetric(
            //   horizontal: width < 800 ? 30 : width * .1,
            // ),
            //   child: LayoutBuilder(
            //     builder: (context, ctrnt) {
            //       final double cHeight = ctrnt.maxHeight;
            //       final double cWidth = ctrnt.maxWidth;
            //       return StreamBuilder<int>(
            //           stream: _vm.stream,
            //           builder: (context, snapshot) {
            //             if (snapshot.hasError || !snapshot.hasData) {
            //               return const Center(
            //                 child: CircularProgressIndicator.adaptive(),
            //               );
            //             }

            //             return Column(
            //               children: [
            //                 SizedBox(
            //                   width: cWidth,
            //                   // height: 100,
            //                   child: Wrap(
            //                     runAlignment: WrapAlignment.center,
            //                     crossAxisAlignment: WrapCrossAlignment.center,
            //                     alignment: WrapAlignment.spaceBetween,
            //                     children: [
            //                       ///TITLE
            //                       Container(
            //                         margin: const EdgeInsets.symmetric(
            //                             vertical: 10),
            //                         width: cWidth <= 800 ? cWidth : 200,
            //                         child: Row(
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.center,
            //                           mainAxisAlignment: cWidth <= 800
            //                               ? MainAxisAlignment.center
            //                               : MainAxisAlignment.start,
            //                           children: [
            //                             SizedBox(
            //                               width: 50,
            //                               height: 50,
            //                               child: Image.asset(
            //                                   "assets/icons/logo.png"),
            //                             ),
            //                             Image.asset(
            //                               "assets/icons/text.png",
            //                               height: 30,
            //                               color: black,
            //                             )
            //                           ],
            //                         ),
            //                       ),
            //                       SizedBox(
            //                         width: cWidth <= 800 ? cWidth : 600,
            //                         height: 60,
            //                         child: Row(
            //                           children: [
            //                             Expanded(
            //                               child: Row(
            //                                 children: _tabs
            //                                     .map(
            //                                       (e) => Expanded(
            //                                         child: MaterialButton(
            //                                           onPressed: () {
            //                                             _vm.update(
            //                                                 _tabs.indexOf(e));
            //                                           },
            //                                           child: Center(
            //                                             child: Text(
            //                                               e,
            //                                               textAlign:
            //                                                   TextAlign.center,
            //                                               style: TextStyle(
            //                                                 height: 1,
            //                                                 color: snapshot
            //                                                             .data! ==
            //                                                         _tabs
            //                                                             .indexOf(
            //                                                                 e)
            //                                                     ? Colors.blue
            //                                                     : black,
            //                                                 fontSize: 15.5,
            //                                                 fontWeight:
            //                                                     FontWeight.w600,
            //                                               ),
            //                                             ),
            //                                           ),
            //                                         ),
            //                                       ),
            //                                     )
            //                                     .toList(),
            //                               ),
            //                             ),
            //                             const SizedBox(
            //                               width: 30,
            //                             ),
            //                             Container(
            //                               decoration: BoxDecoration(
            //                                 border: Border.all(
            //                                   color: black,
            //                                   width: 2,
            //                                 ),
            //                                 borderRadius:
            //                                     BorderRadius.circular(30),
            //                               ),
            //                               child: MaterialButton(
            //                                 onPressed: () {},
            //                                 padding: const EdgeInsets.symmetric(
            //                                     vertical: 0, horizontal: 30),
            //                                 shape: RoundedRectangleBorder(
            //                                   borderRadius:
            //                                       BorderRadius.circular(30),
            //                                 ),
            //                                 child: const Center(
            //                                   child: Text(
            //                                     "HIRE ME",
            //                                     style: TextStyle(
            //                                       height: 1,
            //                                       fontSize: 15,
            //                                       fontWeight: FontWeight.w600,
            //                                     ),
            //                                   ),
            //                                 ),
            //                               ),
            //                             )
            //                           ],
            //                         ),
            //                       ),

            //                       ///Content
            //                     ],
            //                   ),
            //                 ),
            //                 Expanded(
            //                   child: AnimatedSwitcher(
            //                     duration: const Duration(milliseconds: 150),
            //                     child: _contents[snapshot.data!],
            //                   ),
            //                 )
            //               ],
            //             );
            //           });
            //     },
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
