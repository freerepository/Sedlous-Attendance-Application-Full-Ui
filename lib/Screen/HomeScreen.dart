import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/Views/MyAppBar.dart';
import 'package:sadulous_ui_flutter/Views/MyBox.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final punchTypeString = ["PUNCH IN", "PUNCH OUT"];
  late bool _isChecked = false;
  late String _selecteditem = "";

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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 85, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // java kotlin jetpack compose, fuller, ract native ,



                                  Text(
                                    "AKASH KUMAR",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CupertinoColors.white,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    "ANDROID DEVELOPER",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CupertinoColors.black,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "10:10:10",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CupertinoColors.white,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    "10:10:10",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: CupertinoColors.black,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Timer Container
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text("Select punuch type",style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none
                                    ),
                                    // focusColor: Colors.black,
                                    dropdownColor: Colors.red,
                                    items: <String>['PUNCH IN', 'PUNCH OUT'].map((String item) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          item,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        value: item,
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      _selecteditem = value!;
                                    }),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              width: _width,
                              height: 60,
                            ),
                          ],
                        )),
                    Row(
                      children: [
                        Checkbox(
                            value: _isChecked,
                            onChanged: ((bool? check) {
                              setState(() {
                                _isChecked = check!;
                              });
                            })),
                        Text("Work From Home",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text("SUMBIT",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        width: _width,
                        height: 60,
                      ),
                    )
                    //Select punch type text
                    //drop down for punch in and punch out
                    //checkbox for work from home
                    //in below watch
                  ],
                ),
                width: _width,
                height: _height / _width * 150,
                margin: 240,
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
                titleName: "Home Screen",
                fontsize: 22,
                textColor: Colors.white),
          ],
        ));
  }
}
