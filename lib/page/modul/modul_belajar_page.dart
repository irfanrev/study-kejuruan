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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[400],
          title: Text('Modul Belajar'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                      color: Colors.green,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Buku Apa',
                            style: GoogleFonts.poppins(fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Deskripsinya apa',
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
