import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/dto/user_req_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/session_user.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/user_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userController = Provider<UserController>((ref) {
  return UserController(ref);
});

class UserController {
  final mContext = navigatorKey.currentContext;
  final UserService userService = UserService();
  final Ref ref;
  UserController(this.ref);

  Future<void> join(
      {required String username,
      required String password,
      required String nickname,
      required String email}) async {
    JoinReqDto joinReqDto = JoinReqDto(
        username: username,
        password: password,
        nickname: nickname,
        email: email);
    ResponseDto responseDto = await userService.fetchJoin(joinReqDto);

    if (responseDto.code == 1) {
      Navigator.popAndPushNamed(mContext!, "/login");
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("회원가입 실패 : ${responseDto.msg}")),
      );
    }
  }

  Future<void> login(
      {required String username, required String password}) async {
    LoginReqDto joinReqDto =
        LoginReqDto(username: username, password: password);
    ResponseDto responseDto = await userService.fetchLogin(joinReqDto);

    if (responseDto.code == 1) {
      SessionUser sessionUser = responseDto.data;
      ref.read(authProvider).authentication(sessionUser);
      //_ref.read(authProvider.notifier).authentication(sessionUser);
      Navigator.pushNamedAndRemoveUntil(mContext!, "/main", (route) => false);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("로그인 실패 : ${responseDto.msg}")),
      );
    }
  }

  Future<void> logout() async {
    ref.read(authProvider).inValidate();
    // _ref.read(authProvider.notifier).inValidate();
    await Navigator.of(navigatorKey.currentContext!)
        .pushNamedAndRemoveUntil("/login", (route) => false);
  }

  Future<void> userProfileAdd(String filePath) async {
    ResponseDto responseDto = await userService.fetchProfileUpdate(
        filePath, ref.read(authProvider).sessionUser.jwtToken);
    if (responseDto.code == 1) {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        const SnackBar(content: Text("사진 업로드 성공 ")),
      );
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("사진업로드 실패 : ${responseDto.msg}")),
      );
    }
  }
}
