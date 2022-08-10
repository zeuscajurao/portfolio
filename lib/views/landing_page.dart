import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';
import 'package:zeuscajurao/global/scrollable_pageview.dart';
import 'package:zeuscajurao/views/landing_children/bloc/stream_page.dart';
import 'package:zeuscajurao/views/landing_children/blog.dart';
import 'package:zeuscajurao/views/landing_children/home.dart';
import 'package:zeuscajurao/views/landing_children/services.dart';
import 'package:zeuscajurao/views/landing_children/v2/exp.dart';
import 'package:zeuscajurao/views/landing_children/v2/home.dart';
import 'package:zeuscajurao/views/landing_children/v2/offers.dart';
import 'package:zeuscajurao/views/landing_children/v2/platforms.dart';
import 'package:zeuscajurao/views/landing_children/works.dart';
import 'package:zeuscajurao/views/landingv2_children/initial_page.dart';
import 'package:zeuscajurao/views/landingv2_children/introduction_page.dart';
import 'package:zeuscajurao/views/landingv2_children/platform_page.dart';
import 'package:zeuscajurao/views/landingv2_children/works_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static final StreamPage _vr = StreamPage.instance;
  // static final List<String> _tabs = [
  //   "assets/icons/home.png",
  //   "assets/icons/user.png",
  //   "assets/icons/portfolio.png",
  // ];
  // static final List<String> _tabLabel = [
  //   "Home",
  //   "Services",
  //   "Works",
  //   "Blog",
  // ];

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late final ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: dark,
        body: LayoutBuilder(
          builder: (_, constraint) {
            final double height = constraint.maxHeight;
            final double width = constraint.maxWidth;
            return SizedBox(
              width: double.maxFinite,
              height: height,
              child: Scrollbar(
                controller: _controller,
                child: ListView(
                  controller: _controller,
                  children: const [
                    InitialPage(),
                    SizedBox(
                      height: 80,
                    ),
                    IntroductionPage(),
                    PlatformV2Page(),
                    LatestWorks(),
                  ],
                ),
                // child: ListView(
                //   controller: _controller,
                //   padding: const EdgeInsets.all(0),
                //   children: const [
                //     HomePagev2(),
                //     ExpPage(),
                //     OffersPage(),
                //     PlatformsPage(),
                //   ],
                //   // children: header,
                // ),
              ),
            );
          },
        ),
      );
}
