import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreens/ChangePassword.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreens/NotificationProfileScreen.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreens/LogOutScreen.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreens/MyProfile.dart';
import 'package:sadulous_ui_flutter/Views/ProfileItemRow.dart';

import '../Views/MyAppBar.dart';
import '../Views/MyBox.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final icons = <IconData>[
    Icons.home,
    Icons.password,
    Icons.notifications,
    Icons.logout
  ];

  final titles = ["My Profile", "Change Password", "Notification", "Log Out"];

  final NewScreen = [
    MyProfile(),
    ChangePassword(),
    NotificationProfileScreen(),
    LogOutScreen(),
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
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                child: Image.asset('user.png'),
                                width: _width * 0.23,
                                height: _width * 0.23,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                              ),
                            ),
                            Text(
                              "AKASH KUMAR",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "6398763966",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 10),
                          child: Container(
                              width: _width,
                              height: _height * 0.44,
                              // color: Colors.white,
                              child: ListView.builder(
                                  itemCount: titles.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen[index],));
                                        },
                                        child: ProfileItemRow(
                                            icon: icons[index],
                                            title: titles[index]));
                                  })

                              // child: ListTile(title: Text("akash"),leading: Icon(Icons.home),trailing: Icon(Icons.navigate_next),)
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                width: _width,
                height: _height * 0.77,
                margin: _height * 0.1,
                linearbegin: Colors.white12,
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
                titleName: "User Profile",
                fontsize: 22,
                textColor: Colors.white),
          ],
        ));
  }
}
