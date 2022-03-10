import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_kejuruan/page/modul/modul_belajar_detail.dart';
import 'package:study_kejuruan/services/supabase_handler.dart';
import 'package:supabase/supabase.dart';

class ModulBelajar extends StatefulWidget {
  const ModulBelajar({Key? key}) : super(key: key);

  @override
  _ModulBelajarState createState() => _ModulBelajarState();
}

class _ModulBelajarState extends State<ModulBelajar> {
  SupabaseHandler supabaseHandler = SupabaseHandler();

  final client = SupabaseClient("https://lihepmmyxgmkuppbsxqm.supabase.co",
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpaGVwbW15eGdta3VwcGJzeHFtIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY0NjkxMDY2NiwiZXhwIjoxOTYyNDg2NjY2fQ.TGtMbDYP_vI-Zliy6HU0hi09SBGG5_VsVhcg2Ta1o8E");

  Future<dynamic> getData() async {
    final response = await client.from('book').select().execute();
    print(response);
    dynamic data = response.data;
    return data;
  }

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
        body: FutureBuilder<dynamic>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Get.to(
                        ModulDetail(ebook: snapshot.data![index]['pdf']),
                        transition: Transition.fadeIn),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
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
                            color: Colors.grey[100],
                            child: Image.network(
                              snapshot.data![index]['cover'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![index]['judul'],
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
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
                                        Text(
                                          snapshot.data![index]['view'],
                                        ),
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
                                        Text(
                                          snapshot.data![index]['start'],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Text(
                                  snapshot.data![index]['desk'],
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}
