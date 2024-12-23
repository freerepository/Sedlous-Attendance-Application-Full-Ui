import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/Views/AppBarWithBack.dart';
import 'package:sadulous_ui_flutter/Views/MyProfileItem.dart';

import '../../Views/MyAppBar.dart';
import '../../Views/MyBox.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final icons = <IconData>[
    Icons.add_box_outlined,
    Icons.work_outline,
    Icons.holiday_village_outlined,
    Icons.label_important_outline,
    Icons.free_breakfast_outlined
  ];

  final titles = [
    "Joined Date",
    "Experience",
    "Total Attendance",
    "Total Leave",
    "Holiday"
  ];

  final NewScreen = [
    Text("Joined Date"),
    Text("Experience"),
    Text("Attendance"),
    Text("Leave"),
    Text("HoliDays")
  ];

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            color: Colors.red),
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "AKASH KUMAR",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.red),
                                ),
                                Text(
                                  "6398763966",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
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
                  child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (context, index) =>
                        MyProfileItem(icon: icons[index], title: titles[index]),
                  ),
                  width: _width,
                  height: _height / _width * 200,
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
                    "SADULOUS PVT LTD",
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
