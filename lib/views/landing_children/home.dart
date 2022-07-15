import 'package:flutter/material.dart';
import 'package:zeuscajurao/views/landing_children/home_children/mobile.dart';
import 'package:zeuscajurao/views/landing_children/home_children/web.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) {
        final double width = constraint.maxWidth;
        final double height = constraint.maxHeight;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          child: width <= 800 ? const MobileView() : const WebView(),
        );
      },
    );
  }
}
