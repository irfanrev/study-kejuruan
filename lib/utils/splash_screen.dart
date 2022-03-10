import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:study_kejuruan/page/starter.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 5)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return StarterPage();
          }
          return Center(
            child: Container(
              width: 220,
              height: 220,
              child: Lottie.asset('assets/img/study.json'),
            ),
          );
        },
      ),
    );
  }
}
