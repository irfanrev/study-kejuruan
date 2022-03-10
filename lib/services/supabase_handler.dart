import 'package:supabase/supabase.dart';
import 'package:flutter/material.dart';

class SupabaseHandler {
  static String supabaseUrl = 'https://zihnfklojdputvfpemhz.supabase.co';
  static String supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xlIiwiaWF0IjoxNjQ0MDQ4MTA1LCJleHAiOjE5NTk2MjQxMDV9.vk0sMC3ZWyu8ck5Jwb96zdbE_wjS2HU0Cc923WUrv7o';

  final client = SupabaseClient(supabaseUrl, supabaseKey);

  Future<List<dynamic>> getData() async {
    final response = await client
        .from('book')
        .select()
        .order('id', ascending: true)
        .execute();
    print(response);
    List<dynamic> data = response.data;
    return data;
  }
}
