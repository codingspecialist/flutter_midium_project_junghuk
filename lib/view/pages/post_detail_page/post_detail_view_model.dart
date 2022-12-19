import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/post_detail.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/post_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class PostDetailState {
  bool isLove;
  PostDetail? postDetail;

  PostDetailState({this.postDetail, required this.isLove});
}

final postDetailViewModel =
    StateNotifierProvider.family<PostDetailViewModel, PostDetailState, int>(
        (ref, postId) {
  return PostDetailViewModel(PostDetailState(isLove: true), ref)
    ..notifyViewModel(postId);
});

class PostDetailViewModel extends StateNotifier<PostDetailState> {
  PostDetailViewModel(super.state, this.ref);
  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> like() async {
    PostDetailState postDetailState = state;
    postDetailState.isLove = !postDetailState.isLove;
    Logger().d(postDetailState.isLove);
    state = PostDetailState(
        postDetail: postDetailState.postDetail, isLove: postDetailState.isLove);
  }

  Future<void> notifyViewModel(int postId) async {
    ResponseDto responseDto = await PostService()
        .fetchPostDetail(ref.read(authProvider).sessionUser.jwtToken, postId);

    if (responseDto.code == 1) {
      state = PostDetailState(postDetail: responseDto.data, isLove: false);
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
