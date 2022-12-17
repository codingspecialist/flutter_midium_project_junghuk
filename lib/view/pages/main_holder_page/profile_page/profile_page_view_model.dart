import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/post_profile.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/post_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class ProfileState {
  PostProfile? postProfile;

  ProfileState({this.postProfile});
}

final profileViewModel =
    StateNotifierProvider<ProfileViewModel, ProfileState>((ref) {
  return ProfileViewModel(ProfileState(), ref)..notifyViewModel();
});

class ProfileViewModel extends StateNotifier<ProfileState> {
  ProfileViewModel(super.state, this.ref);
  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyViewModel() async {
    Logger().d("profileViewModel 초기화 시작");
    ResponseDto responseDto = await PostService().fetchPostProfileList(
        ref.read(authProvider).jwtToken, ref.read(authProvider).user.userId);

    if (responseDto.code == 1) {
      state = ProfileState(postProfile: responseDto.data);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        const SnackBar(content: Text("Jwt 토큰이 만료되었습니다. 로그인 페이지로 이동합니다.")),
      );
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushNamedAndRemoveUntil(
            mContext!, "/login", (route) => false);
      });
    }
  }
}
