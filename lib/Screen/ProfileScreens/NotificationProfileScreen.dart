import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Views/AppBarWithBack.dart';
import '../../Views/MyAppBar.dart';
import '../../Views/MyBox.dart';

class NotificationProfileScreen extends StatefulWidget {
  const NotificationProfileScreen({Key? key}) : super(key: key);

  @override
  State<NotificationProfileScreen> createState() =>
      _NotificationProfileScreenState();
}

class _NotificationProfileScreenState extends State<NotificationProfileScreen> {
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Type : ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "HOLIDAY",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Date : ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "10/02/2023",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Time : ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "20:29",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Warning : ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "__",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Sign : ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      "akash",
                                      style: TextStyle(
                                          fontFamily: 'signature',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                                child: Container(
                              width: _width,
                              child: Center(
                                child: CircleAvatar(
                                    maxRadius: 100,
                                    minRadius: 100,
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Image.asset('logo.png'),
                                    )),
                              ),
                            ))
                          ],
                        ),
                      ),
                      width: _width,
                      height: _height * 0.25,
                      margin: 10,
                      linearbegin: Colors.blueAccent,
                      linearend: Colors.redAccent,
                      paddingOnly: 18,
                      offsetX: 0,
                      offsetY: 5,
                      boxColor: Colors.black26,
                      color: Colors.redAccent,
                      borderRadius: 20,
                      blurRadius: 10),
                ),
                width: _width,
                height: _height * 0.88,
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
            MyAppbarWithBack(
                ontap: () => Navigator.pop(context),
                icon: Icons.arrow_back,
                width: _width,
                height: _width / 8,
                boxColor: Colors.red,
                blurRadius: 1,
                titleName: "Notification",
                fontsize: 22,
                textColor: Colors.white),
          ],
        ));
  }
}
