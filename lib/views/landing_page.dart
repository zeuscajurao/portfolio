import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';
import 'package:zeuscajurao/global/scrollable_pageview.dart';
import 'package:zeuscajurao/views/landing_children/bloc/stream_page.dart';
import 'package:zeuscajurao/views/landing_children/blog.dart';
import 'package:zeuscajurao/views/landing_children/home.dart';
import 'package:zeuscajurao/views/landing_children/services.dart';
import 'package:zeuscajurao/views/landing_children/works.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static final StreamPage _vr = StreamPage.instance;
  static final List<String> _tabs = [
    "assets/icons/home.png",
    "assets/icons/user.png",
    "assets/icons/portfolio.png",
  ];
  static final List<String> _tabLabel = [
    "Home",
    "Services",
    "Works",
    "Blog",
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: dark,
        body: LayoutBuilder(
          builder: (_, constraint) {
            final double height = constraint.maxHeight;
            final double width = constraint.maxWidth;
            final List<Widget> contents = [
              HomePage(
                isMobile: width <= 800,
              ),
              const Services(),
              const Works(),
              const Blog(),
            ];
            final List<Widget> header = [
              Positioned.fill(
                child: ScrollablePageView(
                  children: contents,
                ),
              ),
              StreamBuilder<int>(
                stream: _vr.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasError || !snapshot.hasData) {
                    return Container();
                  }
                  final int page = snapshot.data!;
                  return Positioned(
                    top: 40,
                    child: SizedBox(
                      width: width,
                      height: 60,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width <= 800 ? 30 : width * .1,
                        ),
                        child: LayoutBuilder(builder: (_, c) {
                          final double cWidth = c.maxWidth;
                          return Row(
                            children: [
                              Image.asset(
                                "assets/images/logo.png",
                              ),
                              const Spacer(),
                              Container(
                                width: width <= 800 ? 350 : cWidth * .41,
                                constraints: const BoxConstraints(
                                  minWidth: 350,
                                ),
                                height: 60,
                                child: Row(
                                  children: _tabLabel
                                      .map(
                                        (e) => Expanded(
                                          child: MaterialButton(
                                            onPressed: () {
                                              _vr.update(_tabLabel.indexOf(e));
                                            },
                                            child: Center(
                                              child: AnimatedFadeWidget(
                                                slideFrom:
                                                    const Offset(0, -0.5),
                                                child: Text(
                                                  e,
                                                  style: TextStyle(
                                                    color: page ==
                                                            _tabLabel.indexOf(e)
                                                        ? accent
                                                        : white,
                                                    fontSize: 22,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  );
                  // return SizedBox(
                  //   width: 70,
                  //   height: height,
                  //   child: Stack(
                  //     children: [
                  //       Positioned.fill(
                  //         child: Center(
                  //           child: ListView.separated(
                  //             shrinkWrap: true,
                  //             itemBuilder: (_, index) => IconButton(
                  //               onPressed: () {
                  //                 _vr.update(index);
                  //               },
                  //               icon: Image.asset(
                  //                 _tabs[index],
                  //                 color: page == index
                  //                     ? primary
                  //                     : Colors.grey.withOpacity(.3),
                  //                 height: 20,
                  //               ),
                  //             ),
                  //             separatorBuilder: (_, index) => const SizedBox(
                  //               height: 30,
                  //             ),
                  //             itemCount: _tabs.length,
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         top: 30,
                  //         left: 10,
                  //         right: 10,
                  // child: Image.asset(
                  //   "assets/images/logo.png",
                  // ),
                  //       ),
                  //     ],
                  //   ),
                  // );
                },
              ),
              if (width > 800) ...{
                SizedBox(
                  width: width <= 950 ? 0 : 70,
                  height: height,
                ),
              }
            ];
            return SizedBox(
              width: width,
              height: height,
              child: Stack(
                children: header,
              ),
              // child: Padding(
              // padding: EdgeInsets.symmetric(
              //   horizontal: width <= 800 ? 30 : width * .05,
              // ),
              //   child: Stack(
              //     children: header,
              //   ),
              // ),
            );
          },
        ),
      );
}

// class LandingPage extends StatefulWidget {
//   const LandingPage({Key? key}) : super(key: key);
//   static final BodyChild _vm = BodyChild.instance;

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   static final StreamPage _vr = StreamPage.instance;
//   static final List<String> _tabs = [
//     "assets/icons/home.png",
//     "assets/icons/user.png",
//     "assets/icons/portfolio.png",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (_, constraint) {
//           final double height = constraint.maxHeight;
//           final double width = constraint.maxWidth;
//           final List<Widget> contents = [
//             HomePage(
//               isMobile: width <= 800,
//             ),
//             const AboutMe(),
//             Container(
//               color: Colors.blue,
//             ),
//           ];
//           final List<Widget> header = [
//             StreamBuilder<int>(
//               stream: _vr.stream,
//               builder: (context, snapshot) {
//                 if (snapshot.hasError || !snapshot.hasData) {
//                   return Container();
//                 }
//                 final int page = snapshot.data!;
//                 return SizedBox(
//                   width: width <= 800 ? width - 60 : 70,
//                   height: width <= 800 ? 70 : height,
//                   child: width <= 800
//                       ? AppBar(
//                           title: Image.asset(
//                             "assets/images/logo.png",
//                             height: 50,
//                           ),
//                           centerTitle: false,
//                           backgroundColor: white,
//                           elevation: 0,
//                           automaticallyImplyLeading: false,
//                           actions: List.generate(
//                             _tabs.length,
//                             (index) => IconButton(
//                               onPressed: () {
//                                 _vr.update(index);
//                               },
//                               icon: Image.asset(
//                                 _tabs[index],
//                                 color: page == index ? Colors.blue : black,
//                                 height: 20,
//                               ),
//                             ),
//                           ),
//                         )
//                       : Stack(
//                           children: [
//                             Positioned.fill(
//                               child: Center(
//                                 child: ListView.separated(
//                                   shrinkWrap: true,
//                                   itemBuilder: (_, index) => IconButton(
//                                     onPressed: () {
//                                       _vr.update(index);
//                                     },
//                                     icon: Image.asset(
//                                       _tabs[index],
//                                       color:
//                                           page == index ? Colors.blue : black,
//                                     ),
//                                   ),
//                                   separatorBuilder: (_, index) =>
//                                       const SizedBox(
//                                     height: 30,
//                                   ),
//                                   itemCount: _tabs.length,
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               top: 20,
//                               left: 10,
//                               right: 10,
//                               child: Image.asset(
//                                 "assets/images/logo.png",
//                               ),
//                             ),
//                           ],
//                         ),
//                 );
//               },
//             ),
//             Expanded(
//               child: ScrollablePageView(
//                 children: contents,
//               ),
//             ),
//             if (width > 800) ...{
//               SizedBox(
//                 width: width <= 950 ? 0 : 70,
//                 height: height,
//               ),
//             }
//           ];
//           return SizedBox(
//             width: width,
//             height: height,
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: width < 800 ? 30 : width * .05,
//               ),
//               child: width < 800
//                   ? Column(
//                       children: header,
//                     )
//                   : Row(
//                       children: header,
//                     ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
