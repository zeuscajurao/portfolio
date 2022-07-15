import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/constants.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) {
        final double height = constraint.maxHeight;
        final double width = constraint.maxWidth;
        return SizedBox(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, c) {
                    final double cw = c.maxWidth;
                    final double ch = c.maxHeight;
                    return SizedBox(
                      width: c.maxWidth,
                      height: c.maxHeight,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            right: (cw * .55) - 75,
                            bottom: 40,
                            child: Image.asset(
                              "assets/images/iPad.png",
                              height: 750 * ((cw * .75) / 750),
                            ),
                          ),
                          Positioned(
                            // top: 30,
                            // right: 310,
                            bottom: 0,
                            child: Image.asset(
                              "assets/images/iPhone2.png",
                              height: 600 * ((cw * .5) / 600),
                            ),
                          ),
                          Positioned(
                            right: (cw * .2) + 10,
                            // left: 320,
                            bottom: 40,
                            child: Image.asset(
                              "assets/images/iPhone1.png",
                              height: 700 * ((cw * .6) / 700),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zeus Nicole",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blue.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 70,
                      height: .75,
                    ),
                  ),
                  const Text(
                    "Cajurao",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w700,
                      fontSize: 80,
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
                      fontSize: 30,
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
                  const SizedBox(
                    height: 40,
                  )
                ],
              )
            ],
          ),
          // child: Stack(
          //   children: [
          //     Positioned(
          //       bottom: 150,
          //       right: -160,
          //       child: Container(
          //         width: 320,
          //         height: 320,
          //         decoration: BoxDecoration(
          //           gradient: RadialGradient(
          //             colors: [
          //               Colors.red.shade300,
          //               Colors.red.shade700,
          //             ],
          //           ),
          //           shape: BoxShape.circle,
          //           // boxShadow: const [
          //           //   BoxShadow(
          //           //     color: Colors.blue,
          //           //     offset: Offset(3, 3),
          //           //     blurRadius: 7,
          //           //   )
          //           // ],
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       top: 110,
          //       left: 220,
          //       child: Container(
          //         width: 120,
          //         height: 120,
          //         decoration: BoxDecoration(
          //           gradient: RadialGradient(
          //             colors: [
          //               Colors.blue.shade300,
          //               Colors.blue.shade700,
          //             ],
          //           ),
          //           shape: BoxShape.circle,
          //           // boxShadow: const [
          //           //   BoxShadow(
          //           //     color: Colors.blue,
          //           //     offset: Offset(3, 3),
          //           //     blurRadius: 7,
          //           //   )
          //           // ],
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       top: -60,
          //       right: 20,
          //       child: Container(
          //         width: 170,
          //         height: 170,
          //         decoration: BoxDecoration(
          //           gradient: RadialGradient(
          //             colors: [
          //               Colors.green.shade300,
          //               Colors.green.shade700,
          //             ],
          //           ),
          //           shape: BoxShape.circle,
          //           // boxShadow: const [
          //           //   BoxShadow(
          //           //     color: Colors.blue,
          //           //     offset: Offset(3, 3),
          //           //     blurRadius: 7,
          //           //   )
          //           // ],
          //         ),
          //       ),
          //     ),
          //     Positioned.fill(
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const SizedBox(
          //             height: 120,
          //           ),
          //           Expanded(
          //             child: ConstrainedBox(
          //               constraints: BoxConstraints(
          //                 maxWidth: width * .7,
          //               ),
          //               child: SingleChildScrollView(
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     const Text(
          //                       "Hi! I'm Zeus\nNicole Cajurao",
          //                       style: TextStyle(
          //                         color: black,
          //                         fontWeight: FontWeight.w700,
          //                         fontSize: 50,
          //                         height: 1,
          //                       ),
          //                     ),
          //                     Text(
          //                       "Software Developer",
          //                       style: TextStyle(
          //                         color: black.withOpacity(.5),
          //                         fontSize: 25,
          //                       ),
          //                     ),
          //                     const SizedBox(
          //                       height: 30,
          //                     ),
          //                     Text(
          //                       "It's nice seeing you here checking my profile!",
          //                       style: TextStyle(
          //                         color: black.withOpacity(.8),
          //                         fontSize: 20,
          //                       ),
          //                     ),
          //                     Text(
          //                       "I am a Mobile developer for ${DateTime.now().difference(DateTime(2019, 6, 7)).inDays ~/ 365} years, I can do HYBRID Mobile Applications\nand can also do Fullstack Web Development.",
          //                       style: TextStyle(
          //                         color: black.withOpacity(.8),
          //                         fontSize: 20,
          //                       ),
          //                     ),
          //                     const SizedBox(
          //                       height: 50,
          //                     ),
          //                     Column(
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         const Text(
          //                           "Mastered\nTechnologies",
          //                           style: TextStyle(
          //                             color: black,
          //                             fontWeight: FontWeight.w700,
          //                             fontSize: 25,
          //                             height: 1,
          //                           ),
          //                         ),
          //                         const SizedBox(
          //                           height: 20,
          //                         ),
          //                         SizedBox(
          //                           width: width * .7,
          //                           height: 50,
          //                           child: ListView.separated(
          //                             physics:
          //                                 const NeverScrollableScrollPhysics(),
          //                             scrollDirection: Axis.horizontal,
          //                             itemBuilder: (_, index) => Image.asset(
          //                               "assets/images/${pl[index]}.png",
          //                               height: 50,
          //                               fit: BoxFit.fitHeight,
          //                             ),
          //                             separatorBuilder: (_, index) =>
          //                                 const SizedBox(
          //                               width: 20,
          //                             ),
          //                             itemCount: pl.length,
          //                           ),
          //                         ),
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ),
          //           SizedBox(
          //             height: 60,
          //             width: 300,
          //             child: ListView.separated(
          //               scrollDirection: Axis.horizontal,
          //               itemBuilder: (_, index) => IconButton(
          //                 padding: const EdgeInsets.all(0),
          //                 onPressed: () async {
          //                   if (await canLaunchUrl(Uri.parse(links[index]))) {
          //                     await launchUrl(Uri.parse(links[index]));
          //                   }
          //                 },
          //                 icon: Center(
          //                   child: Image.asset(
          //                     icons[index],
          //                     width: 40,
          //                     height: 40,
          //                   ),
          //                 ),
          //               ),
          //               separatorBuilder: (_, index) => const SizedBox(
          //                 width: 20,
          //               ),
          //               itemCount: icons.length,
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 40,
          //           ),
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        );
      },
    );
  }
}
