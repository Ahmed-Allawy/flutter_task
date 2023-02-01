// ignore_for_file: non_constant_identifier_names, avoid_print, body_might_complete_normally_nullable

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tast/models/api_data_model.dart';

class Api {
  Future<Data>? data;

  // Future<Data?> fetchUrl() async {
  //   try {
  //     http.Response response = await http.get(Uri.parse(
  //         'https://run.mocky.io/v3/3a1ec9ff-6a95-43cf-8be7-f5daa2122a34'));
  //     if (response.statusCode == 200) {
  //       String body = response.body;
  //       print(body);
  //       var json = jsonDecode(body);
  //       data = Data.fromJson(json);
  //       return data;
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //   return null;
  // }

  Future<Data?> fetchUrl() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://run.mocky.io/v3/3a1ec9ff-6a95-43cf-8be7-f5daa2122a34'));
      if (response.statusCode == 200) {
        print(jsonDecode(response.body)['img']);
        return (Data.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      print(e);
    }
  }
}
