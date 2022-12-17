import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/post.dart';
import 'package:flutter_midium_project/model/post_love.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/post_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class YourLibraryState {
  List<PostLove>? postLoveList;

  YourLibraryState({this.postLoveList});
}

final yourLibraryViewModel =
    StateNotifierProvider<YourLibraryViewModel, YourLibraryState>((ref) {
  return YourLibraryViewModel(YourLibraryState(), ref)..notifyViewModel();
});

class YourLibraryViewModel extends StateNotifier<YourLibraryState> {
  YourLibraryViewModel(super.state, this.ref);
  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyViewModel() async {
    ResponseDto responseDto =
        await PostService().fetchPostLoveList(ref.read(authProvider).jwtToken);

    if (responseDto.code == 1) {
      state = YourLibraryState(postLoveList: responseDto.data);
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
