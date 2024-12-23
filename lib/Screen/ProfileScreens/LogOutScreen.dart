import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Views/AppBarWithBack.dart';
import '../../Views/MyBox.dart';

class LogOutScreen extends StatelessWidget {
  const LogOutScreen({Key? key}) : super(key: key);

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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: _width,
                            height: _height * 0.075,
                            child: Center(
                              child: Text(
                                "Meet You Soon!",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(offset: Offset(0, 3),color: Colors.white),
                                    ],
                                    color: Colors.red,
                                    fontSize: 25),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(height: 2,),
                          Divider(thickness: 1, color: Colors.red, height: 2,),
                          SizedBox(height: 2,),

                          Container(
                            width: _width,
                            height: _height * 0.075,
                            child: Center(
                              child: Text(
                                "LOG OUT",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                width: _width,
                height: _height / _width * 100,
                margin: 220,
                linearbegin: Colors.white,
                linearend: Colors.blueAccent,
                paddingOnly: 18,
                offsetX: 0,
                offsetY: 5,
                boxColor: Colors.black26,
                color: Colors.redAccent,
                borderRadius: 20,
                blurRadius: 10),
            Expanded(
              child: MyBox(
                  child: Center(
                    child: Icon(Icons.lock,size: (_height + _width) % _height * 0.3, color: Colors.red,),
                  ),
                  width: _width,
                  height: _height / _width * 120,
                  margin: 198 * 2,
                  linearbegin: Colors.white,
                  linearend: Colors.blueAccent,
                  paddingOnly: 18,
                  offsetX: 0,
                  offsetY: 5,
                  boxColor: Colors.black26,
                  color: Colors.redAccent,
                  borderRadius: 20,
                  blurRadius: 10),
            ),
            //App bar
            MyAppbarWithBack(
                ontap: ()=> Navigator.pop(context),
                icon: Icons.arrow_back,
                width: _width,
                height: _width / 8,
                boxColor: Colors.red,
                blurRadius: 1,
                titleName: "Profile Screen",
                fontsize: 22,
                textColor: Colors.white),
            MyBox(
                child: Center(
                  child: Text(
                    "SEDULOUS PVT LTD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red,
                        shadows: [
                          Shadow(offset: Offset(0, 3))
                        ]),
                  ),
                ),
                width: _width,
                height: 100,
                margin: 80,
                linearbegin: Colors.white,
                linearend: Colors.white,
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
