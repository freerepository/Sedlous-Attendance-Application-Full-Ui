import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sadulous_ui_flutter/MyApplication.dart';
import 'package:sadulous_ui_flutter/Screen/Auth/LoginScreen.dart';
import 'package:sadulous_ui_flutter/Screen/LeaveScreen.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreens/LogOutScreen.dart';
import 'package:sadulous_ui_flutter/Screen/ProfileScreens/MyProfile.dart';
import 'package:sadulous_ui_flutter/Screen/Splash/SplashScreen.dart';

import 'Screen/ProfileScreens/ChangePassword.dart';
import 'Screen/ProfileScreens/NotificationProfileScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, // Set color for status bar
      statusBarIconBrightness: Brightness.light, // Set color for status bar icons
    ));

    return SafeArea(
      child: GetMaterialApp(
        // home: Splash(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
