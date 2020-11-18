import 'dart:convert';

import 'package:dio/dio.dart';
// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Pactive {
  static send(String webhook, Map args) async{
    Response response;
    Dio dio = new Dio();
    response = await dio.post(webhook, data: jsonEncode(args));
  }
}
