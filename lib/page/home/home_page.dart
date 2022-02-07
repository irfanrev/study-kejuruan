import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_kejuruan/page/ar/home_reality.dart';
import 'package:study_kejuruan/page/modul/modul_belajar_page.dart';
import 'package:study_kejuruan/page/video/video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
            child: Stack(
          children: [
            SizedBox.expand(
                child: Column(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Welcome!',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 22),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Irfan Maulana',
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue[300],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: -30,
                              left: -40,
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue[500],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              right: -20,
                              top: -30,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue[500],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Belajar Lebih Intraktif\ndan Menyenangkan',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Image.asset(
                                    'assets/img/belajar.png',
                                    width: 100,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 17, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () => Get.to(ModulBelajar(),
                                  transition: Transition.rightToLeft),
                              child: Container(
                                width: 160,
                                height: 190,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.book_rounded,
                                      size: 60,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Modul Belajar',
                                      style: GoogleFonts.poppins(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => Get.to(VideoPage(),
                                  transition: Transition.rightToLeft),
                              child: Container(
                                width: 160,
                                height: 190,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.video_camera_front,
                                      size: 60,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Video Belajar',
                                      style: GoogleFonts.poppins(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () => Get.to(HomeAr(), transition: Transition.rightToLeft),
                              child: Container(
                                width: 160,
                                height: 190,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.storage_rounded,
                                      size: 60,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Play AR',
                                      style: GoogleFonts.poppins(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 160,
                              height: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.bookmarks_rounded,
                                    size: 60,
                                    color: Colors.indigo,
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Text(
                                    'Rangkuman',
                                    style: GoogleFonts.poppins(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        )),
      ),
    );
  }
}
