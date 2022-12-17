import 'dart:convert';

import 'package:flutter_midium_project/core/http_connector.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/dto/user_req_dto.dart';
import 'package:flutter_midium_project/model/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

void main() async {
  //await fetchLoginTest();
  await fetchJoinTest();
}

Future<void> fetchJoinTest() async {
  JoinReqDto joinReqDto = JoinReqDto(
      username: "hong",
      password: "1234",
      nickname: "홍",
      email: "hong@nate.com");
  String requestBody = jsonEncode(joinReqDto.toJson());
  Response response = await HttpConnector().post("/user/join", requestBody);
  ResponseDto responseDto = toResponseDto(response);
  Logger().d(responseDto.code);
  Logger().d(responseDto.msg);
}

Future<void> fetchLoginTest() async {
  LoginReqDto loginReqDto = LoginReqDto(username: "ssar", password: "1234");
  // 1. json 변환
  String requestBody = jsonEncode(loginReqDto.toJson());

  // 2. 통신 시작
  Response response = await HttpConnector().post("/user/login", requestBody);

  // 3. 토큰 받기
  String jwtToken = response.headers["authorization"].toString();
  Logger().d(jwtToken);
  //await secureStorage.write(key: "jwtToken", value: jwtToken);

  // 4. ResponseDto 만들기
  ResponseDto responseDto = toResponseDto(response);
  Logger().d(responseDto.code);
  Logger().d(responseDto.msg);
  if (responseDto.code == 1) {
    User user = User.fromJson(responseDto.data);
    responseDto.data = user;
  }
}
