import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  late final double width;
  late final double height;
  late final Color boxColor;
  late final double blurRadius;
  late final String titleName;
  late final Color textColor;
  late final double fontsize;

  MyAppBar({
    required this.width,
    required this.height,
    required this.boxColor,
    required this.blurRadius,
    required this.titleName,
    required this.fontsize,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: boxColor, boxShadow: [
        BoxShadow(
          blurRadius: blurRadius,
        )
      ]),
      child: Center(
          child: Text(
        titleName,
        style: TextStyle(color: textColor, fontSize: fontsize),
      )),
    );
  }
}
