import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/post_req_dto.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/dto/user_req_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/session_user.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/post_service.dart';
import 'package:flutter_midium_project/service/user_service.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/home_page/home_page_view_model.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/profile_page/profile_page_view_model.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/your_library_page/your_library_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final postController = Provider<PostController>((ref) {
  return PostController(ref);
});

class PostController {
  final mContext = navigatorKey.currentContext;
  final PostService postService = PostService();
  final Ref ref;
  PostController(this.ref);

  Future<void> write(
      {required String postTitle,
      required String postContent,
      required String role,
      required String filePath}) async {
    PostWriteReqDto postWriteReqDto = PostWriteReqDto(
        userId: ref.read(authProvider).sessionUser.user.userId,
        postTitle: postTitle,
        postContent: postContent,
        role: role);
    Logger().d("디버그 : postController write 실행");
    ResponseDto responseDto = await postService.fetchWrite(
        postWriteReqDto, filePath, ref.read(authProvider).sessionUser.jwtToken);

    if (responseDto.code == 1) {
      //_ref.read(authProvider.notifier).authentication(sessionUser);
      ref.read(homePageViewModel.notifier).notifyViewModel();
      ref.read(yourLibraryViewModel.notifier).notifyViewModel();
      ref.read(profileViewModel.notifier).notifyViewModel();
      Navigator.pop(mContext!);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
        SnackBar(content: Text("로그인 실패 : ${responseDto.msg}")),
      );
    }
  }
}
