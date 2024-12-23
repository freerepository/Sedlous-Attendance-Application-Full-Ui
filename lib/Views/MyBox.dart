import 'package:flutter/cupertino.dart';

class MyBox extends StatelessWidget {
  late final double width;
  late final double height;
  late final double margin;
  late final Color linearbegin;
  late final Color linearend;
  late final double paddingOnly;
  late final double offsetX;
  late final double offsetY;
  late final Color boxColor;
  late final Color color;
  late final double borderRadius;
  late final double blurRadius;
  late final Widget? child;

  MyBox({
    required this.width,
    required this.height,
    required this.margin,
    required this.linearbegin,
    required this.linearend,
    required this.paddingOnly,
    required this.offsetX,
    required this.offsetY,
    required this.boxColor,
    required this.color,
    required this.borderRadius,
    required this.blurRadius,
    this.child
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal:paddingOnly),
      child: Container(
        width: width,
        height: height,
        child: child,
        margin: EdgeInsets.only(top: margin),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [linearbegin, linearend],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: boxColor,
                blurRadius: blurRadius,
                offset: Offset(offsetX, offsetY),
              ),
            ],
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      ),
    );
  }
}
