import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/post_detail.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/post_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailState {
  PostDetail? postDetail;

  PostDetailState({this.postDetail});
}

final postDetailViewModel =
    StateNotifierProvider.family<PostDetailViewModel, PostDetailState, int>(
        (ref, postId) {
  return PostDetailViewModel(PostDetailState(), ref)..notifyViewModel(postId);
});

class PostDetailViewModel extends StateNotifier<PostDetailState> {
  PostDetailViewModel(super.state, this.ref);
  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyViewModel(int postId) async {
    ResponseDto responseDto = await PostService()
        .fetchPostDetail(ref.read(authProvider).sessionUser.jwtToken, postId);

    if (responseDto.code == 1) {
      state = PostDetailState(postDetail: responseDto.data);
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
