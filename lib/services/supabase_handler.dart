import 'package:supabase/supabase.dart';
import 'package:flutter/material.dart';

class SupabaseHandler {
  static String supabaseUrl = '';
  static String supabaseKey = '';

  final client = SupabaseClient(supabaseUrl, supabaseKey);

  getData() async {
    var response = await client
        .from('book')
        .select()
        .order('id', ascending: true)
        .execute();
    print(response);
    final dataList = response.data as List;
    return dataList;
  }
}
