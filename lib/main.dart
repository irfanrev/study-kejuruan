import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_kejuruan/page/starter.dart';
import 'package:study_kejuruan/utils/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
