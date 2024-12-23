import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/Views/AttendanceItem.dart';
import 'package:sadulous_ui_flutter/Views/MyAppBar.dart';
import 'package:sadulous_ui_flutter/Views/MyBox.dart';

class Attendancescreen extends StatelessWidget {
  Attendancescreen({Key? key}) : super(key: key);

  final srList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  final nameList = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Frank",
    "Grace",
    "Hannah",
    "Ivan",
    "Jack"
  ];
  final punchList = [
    "IN",
    "OUT",
    "IN",
    "OUT",
    "IN",
    "OUT",
    "IN",
    "OUT",
    "IN",
    "OUT"
  ];
  final dateList = [
    "2024-01-01",
    "2024-01-02",
    "2024-01-03",
    "2024-01-04",
    "2024-01-05",
    "2024-01-06",
    "2024-01-07",
    "2024-01-08",
    "2024-01-09",
    "2024-01-10"
  ];
  final timeList = [
    "09:00",
    "17:00",
    "09:15",
    "17:10",
    "09:30",
    "17:20",
    "09:00",
    "17:00",
    "09:00",
    "17:00"
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
            //App bar
            MyAppBar(
                width: _width,
                height: _height * 0.08,

                boxColor: Colors.red,
                blurRadius: 1,
                titleName: "Attendance List",
                fontsize: 22,
                textColor: Colors.white),
            Positioned(
              top: 65,
              left: 10,
              right: 10,
              bottom: 15,
              child: Container(
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: _width,
                          height: 80,
                          decoration: BoxDecoration(
                              color: CupertinoColors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Sr.No"),
                              Text("Name"),
                              Text("Punch Type"),
                              Text("Date"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => AttendanceItem(
                            srNumber: srList[index],
                            name: nameList[index],
                            punchType: punchList[index],
                            date: dateList[index],
                            time: timeList[index]),
                      ))
                    ],
                  )),
            ),
          ],
        ));
  }
}
