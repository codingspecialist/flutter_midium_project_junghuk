import 'dart:convert';

import 'package:flutter_midium_project/core/http_connector.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/dto/user_req_dto.dart';
import 'package:flutter_midium_project/model/session_user.dart';
import 'package:flutter_midium_project/model/user.dart';
import 'package:http/http.dart';

class UserService {
  final HttpConnector httpConnector = HttpConnector();

  static final UserService _instance = UserService._single();
  UserService._single();
  factory UserService() {
    return _instance;
  }

  Future<ResponseDto> fetchJoin(JoinReqDto joinReqDto) async {
    String requestBody = jsonEncode(joinReqDto.toJson());
    Response response = await httpConnector.post("/user/join", requestBody);
    return toResponseDto(response); // ResponseDto 응답
  }

  Future<ResponseDto> fetchLogin(LoginReqDto loginReqDto) async {
    // 1. json 변환
    String requestBody = jsonEncode(loginReqDto.toJson());

    // 2. 통신 시작
    Response response = await httpConnector.post("/user/login", requestBody);
    // 3. 토큰 받기
    String jwtToken = response.headers["authorization"].toString();

    // 4. ResponseDto 만들기
    ResponseDto responseDto = toResponseDto(response);
    if (responseDto.code == 1) {
      User user = User.fromJson(responseDto.data);
      responseDto.data = SessionUser(user, jwtToken, true);
    }

    return responseDto; // ResponseDto 응답
  }
}
