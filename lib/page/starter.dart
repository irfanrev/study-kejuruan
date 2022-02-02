import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_kejuruan/page/home/home_page.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.grey[100],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Study Kejuruan',
            style:
                GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Aplikasi pembelajaran untuk Sekolah Menengah Kejuruan',
              style: GoogleFonts.poppins(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(HomePage(), transition: Transition.fadeIn);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 17),
              child: Text(
                'Get Started',
                style: GoogleFonts.poppins(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
