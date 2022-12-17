import 'dart:convert';

import 'package:http/http.dart';

ResponseDto toResponseDto(Response response) {
  Map<String, dynamic> responseMap =
      jsonDecode(utf8.decode(response.bodyBytes)); // 문자열 -> Map

  ResponseDto responseDto =
      ResponseDto.fromJson(responseMap); // Map -> Dart Class

  return responseDto;
}

class ResponseDto {
  final int? code;
  final String? msg;
  dynamic data; // JsonArray [], JsonObject {}

  ResponseDto({
    required this.code,
    required this.msg,
    required this.data,
  });

  ResponseDto.fromJson(Map<String, dynamic> json)
      : code = json["code"],
        msg = json["msg"],
        data = json["data"];
}
