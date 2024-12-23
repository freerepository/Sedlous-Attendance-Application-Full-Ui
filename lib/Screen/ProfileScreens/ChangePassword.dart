import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/Views/AppBarWithBack.dart';

import '../../Views/MyAppBar.dart';
import '../../Views/MyBox.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

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
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 85, horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                    ),
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
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Mobile",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8)),
                                  cursorColor: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              width: _width,
                              height: _height * 0.075,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Password",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8)),
                                  cursorColor: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              width: _width,
                              height: _height * 0.075,
                            ),
                          ],
                        )),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                              "Update Password",
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          width: _width,
                          height: _height * 0.075,
                        ),
                      ),
                    )
                  ],
                ),
                width: _width,
                height: _height * 0.35,
                margin: _height * 0.3,
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
                width: _width,
                height: _height * 0.08,
                boxColor: Colors.red,
                blurRadius: 1,
                titleName: "Change Password",
                fontsize: 22,
                textColor: Colors.white,
                icon: Icons.arrow_back),
          ],
        ));
  }
}
