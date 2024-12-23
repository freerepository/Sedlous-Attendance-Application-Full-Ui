import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/Views/AttendanceItem.dart';
import 'package:sadulous_ui_flutter/Views/MyAppBar.dart';
import 'package:sadulous_ui_flutter/Views/MyBox.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({Key? key}) : super(key: key);

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  String? _selectedValue = "Select Option";

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width ;
    var _height = MediaQuery.of(context).size.height ;

    return Scaffold(
        backgroundColor: Colors.red,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    height: _height * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      // borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))
                    ),
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
              width: _width,
              height: _height * 0.55,
              margin: _height * 0.17,
              linearbegin: Colors.blueAccent,
              linearend: Colors.lightBlue,
              paddingOnly: 18,
              offsetX: 0,
              offsetY: 5,
              boxColor: Colors.black26,
              color: Colors.redAccent,
              borderRadius: 20,
              blurRadius: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Select Leave Type",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          border: Border.all(
                            color: Colors.black, // Border ka color
                            width: _width * 0.004,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButtonFormField(
                            items: <String>[
                              'Select Option',
                              'Fever',
                              'Stomach pain',
                              'Back Pain',
                              'Family Problem'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedValue = newValue;
                              });
                            }),
                      ),
                    ),

                    //Text Field
                    Text(
                      "Remark",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Spacer(),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      height: _height * 0.25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: _width * 0.004, color: Colors.black),
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            hintText: 'Enter your remark ...',
                            border: OutlineInputBorder(),
                            contentPadding:
                                EdgeInsets.only(left: 8.0, top: 8.0),
                          ),
                          textAlignVertical:
                              TextAlignVertical.top, // Align text to the top
                        ),
                      ),
                    ),
                    Spacer(),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: _width * 0.004, color: Colors.black)),
                      height: _height * 0.07,
                      child: Expanded(
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: _height * 0.025,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //App bar
            MyAppBar(
                width: _width,
                height: _height * 0.08,

                boxColor: Colors.red,
                blurRadius: 1,
                titleName: "Leave Apply",
                fontsize: 22,
                textColor: Colors.white),
          ],
        ));
  }
}
