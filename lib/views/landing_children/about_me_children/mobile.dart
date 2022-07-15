import 'package:flutter/material.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint) {
      final double width = constraint.maxWidth;
      final double height = constraint.maxHeight;
      return Container(
        color: Colors.red,
      );
    });
  }
}
