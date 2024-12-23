import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sadulous_ui_flutter/Controller/Helper.dart';
import 'package:sadulous_ui_flutter/Screen/AttendanceScreen.dart';
import 'package:sadulous_ui_flutter/Screen/HomeScreen.dart';
import 'package:sadulous_ui_flutter/Screen/LeaveScreen.dart';
import 'package:sadulous_ui_flutter/Screen/NotificationScreen.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreen.dart';

import 'Views/MyAppBar.dart';

class MyApplication extends StatefulWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  late int _currentIndex = 2;


  //Icons list for my bottom navigation

  final scrrenName = [
    Text("Attendance Screen"),
    Text("Leave Screen"),
    Text("Home Screen"),
    Text("Notification Screen"),
    Text("Profile Screen"),
  ];

  final List<Widget> icn = [
    Image.asset('attendant-list.png', width: 30, height: 30),
    Image.asset('leave.png', width: 30, height: 30),
    Image.asset('home-button.png', width: 30, height: 30),
    Image.asset('notif.png', width: 30, height: 30),
    Image.asset('profile.png', width: 30, height: 30),

  ];

  // final myIcons = <IconData>[
  //   Icons.book,
  //   Icons.book_outlined,
  //   Icons.home,
  //   Icons.notifications,
  //   Icons.person
  // ];

  //this is my pages
  final List<Widget> tabPages = [
    Attendancescreen(),
    LeaveScreen(),
    Homescreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

   final Helper helper = Get.put(Helper());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Colors.blueAccent,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: icn,
      ),
      body: tabPages[_currentIndex],
    );
  }
}
