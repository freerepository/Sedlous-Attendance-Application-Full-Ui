import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppbarWithBack extends StatelessWidget {
  late final double width;
  late final double height;
  late final Color boxColor;
  late final double blurRadius;
  late final String titleName;
  late final Color textColor;
  late final double fontsize;
  late final IconData icon;
  late final VoidCallback? ontap;

  MyAppbarWithBack({
    required this.width,
    required this.height,
    required this.boxColor,
    required this.blurRadius,
    required this.titleName,
    required this.fontsize,
    required this.textColor,
    required this.icon,
    this.ontap
  });

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Stack(
      children:[
        Container(
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
        ),
        Positioned(
          left: 10,
          child: InkWell(
            onTap: ontap,
            child: Container(
            height: _width / 8,
              child: Icon(icon,size: 35,color: Colors.white,),
            ),
          ),
        )
      ]
    );
  }
}
