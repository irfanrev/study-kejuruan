import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_kejuruan/page/starter.dart';
import 'package:study_kejuruan/utils/splash_screen.dart';
import 'package:supabase/supabase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final client = SupabaseClient('https://zihnfklojdputvfpemhz.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xlIiwiaWF0IjoxNjQ0MDQ4MTA1LCJleHAiOjE5NTk2MjQxMDV9.vk0sMC3ZWyu8ck5Jwb96zdbE_wjS2HU0Cc923WUrv7o');
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
