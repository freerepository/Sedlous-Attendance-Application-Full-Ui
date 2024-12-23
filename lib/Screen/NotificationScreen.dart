import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Views/MyAppBar.dart';
import '../Views/MyBox.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => MyBox(
                      width: _width,
                      height: _height / _width * 40,
                      margin: 10,
                      linearbegin: Colors.blueAccent,
                      linearend: Colors.white,
                      paddingOnly: 18,
                      offsetX: 0,
                      offsetY: 5,
                      boxColor: Colors.black26,
                      color: Colors.redAccent,
                      borderRadius: 20,
                      blurRadius: 10),
                ),
                width: _width,
                height: _height * 0.75,
                margin: _height * 0.1,
                linearbegin: Colors.white,
                linearend: Colors.blueAccent,
                paddingOnly: 18,
                offsetX: 0,
                offsetY: 5,
                boxColor: Colors.black26,
                color: Colors.redAccent,
                borderRadius: 20,
                blurRadius: 10),
            //App bar
            MyAppBar(
                width: _width,
                height: _height * 0.08,
                boxColor: Colors.red,
                blurRadius: 1,
                titleName: "Notification",
                fontsize: 22,
                textColor: Colors.white),
          ],
        ));
  }
}
