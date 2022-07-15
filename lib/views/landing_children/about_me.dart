import 'package:flutter/material.dart';
import 'package:zeuscajurao/views/landing_children/about_me_children/mobile.dart';
import 'package:zeuscajurao/views/landing_children/about_me_children/web.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint) {
      final double width = constraint.maxWidth;
      final double height = constraint.maxHeight;
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 100),
        child: width <= 800 ? const AboutMeMobile() : const AboutMeWeb(),
      );
    });
  }
}
