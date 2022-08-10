import 'package:flutter/material.dart';
import 'package:zeuscajurao/app/config.dart';

class BubbleContainer extends StatelessWidget {
  const BubbleContainer({
    Key? key,
    this.size = 100,
    this.backgroundColor = dark,
    required this.iconColor,
    this.padding = 20,
    required this.assetPath,
    this.boxShadow,
  }) : super(key: key);
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final String assetPath;
  final double padding;
  final BoxShadow? boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        boxShadow: [
          if (boxShadow != null) ...{
            boxShadow!,
          },
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset.zero,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          size + 10,
        ),
        child: Container(
          alignment: Alignment.center,
          height: size,
          width: size,
          padding: EdgeInsets.all(padding),
          child: Center(
            child: Image.asset(
              assetPath,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
