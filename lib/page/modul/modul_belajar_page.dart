import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModulBelajar extends StatefulWidget {
  const ModulBelajar({Key? key}) : super(key: key);

  @override
  _ModulBelajarState createState() => _ModulBelajarState();
}

class _ModulBelajarState extends State<ModulBelajar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.lightBlue[400],
          centerTitle: true,
          title: Text('Modul Belajar'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      width: 130,
                      height: 200,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kelistrikan SMK',
                            style: GoogleFonts.poppins(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_rounded,
                                    size: 20,
                                  ),
                                  Text('100k'),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    size: 20,
                                  ),
                                  Text('500'),
                                ],
                              )
                            ],
                          ),
                          Text(
                            'Buku mengenai kelistrikan untuk tingkat SMK Jawa Barat',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      width: 130,
                      height: 200,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kelistrikan SMK',
                            style: GoogleFonts.poppins(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_rounded,
                                    size: 20,
                                  ),
                                  Text('100k'),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    size: 20,
                                  ),
                                  Text('500'),
                                ],
                              )
                            ],
                          ),
                          Text(
                            'Buku mengenai kelistrikan untuk tingkat SMK Jawa Barat',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
