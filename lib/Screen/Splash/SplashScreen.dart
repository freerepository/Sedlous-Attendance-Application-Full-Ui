import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/MyApplication.dart';

import '../../Views/CLR.dart';
import '../../Views/MyAppBar.dart';
import '../../Views/MyBox.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    Timer(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyApplication(),));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width * 1;
    var _height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
        backgroundColor: Colors.red,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: _height * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))
                  ),
                ),
                Expanded(
                  child: Container(
                    height: _height * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(100),
                            topRight: Radius.circular(50))),
                  ),
                ),
              ],
            ),
            //white box
            MyBox(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.redAccent,
                          Colors.blueAccent,

                        ],
                        begin: Alignment.topCenter, // Start from the top
                        end: Alignment.bottomCenter,

                      )
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: CLR.CLRroyalBlue
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("APPLICATION NAME",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                width: _width,
                height: _height * 0.5,
                margin: _height * 0.25,
                linearbegin: Colors.white,
                linearend: Colors.blueAccent,
                paddingOnly: 18,
                offsetX: 0,
                offsetY: 5,
                boxColor: Colors.black26,
                color: Colors.redAccent,
                borderRadius: 20,
                blurRadius: 10),
          ],
        ));
  }
}
