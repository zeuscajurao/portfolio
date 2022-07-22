import 'package:flutter/material.dart';
import 'package:zeuscajurao/global/feature/animated_widget.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(builder: (_, constraint) {
        final double width = constraint.maxWidth;
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width <= 800 ? 30 : width * .1,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AnimatedFadeWidget(
                  slideFrom: Offset(0, -1),
                  child: Text(
                    "I AM VERY SORRY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 90,
                      height: .8,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                AnimatedFadeWidget(
                  slideFrom: const Offset(0, 1),
                  child: Text(
                    "THIS AREA IS STILL UNDER CONSTRUCTION",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 50,
                      height: .8,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
