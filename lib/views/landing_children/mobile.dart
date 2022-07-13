import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraint) {
        final double height = constraint.maxHeight;
        final double width = constraint.maxWidth;
        return Container(
          width: width,
          height: height,
          color: Colors.red,
          child: Center(
            child: Text("MOBILE"),
          ),
        );
      },
    );
  }
}
