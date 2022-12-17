import 'package:flutter/material.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/post.dart';
import 'package:flutter_midium_project/provider/auth_provider.dart';
import 'package:flutter_midium_project/service/post_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageState {
  List<Post>? postDailyList;
  List<Post>? postBusinessList;

  HomePageState({this.postDailyList, this.postBusinessList});
}

final homePageViewModel =
    StateNotifierProvider<HomePageViewModel, HomePageState>((ref) {
  return HomePageViewModel(HomePageState(), ref)..notifyViewModel();
});

class HomePageViewModel extends StateNotifier<HomePageState> {
  HomePageViewModel(super.state, this.ref);
  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyViewModel() async {
    ResponseDto responseDtoDaily = await PostService()
        .fetchPostDailyList(ref.read(authProvider).sessionUser.jwtToken);

    ResponseDto responseDtoBusiness = await PostService()
        .fetchPostBusinessList(ref.read(authProvider).sessionUser.jwtToken);

    if (responseDtoDaily.code == 1 && responseDtoBusiness.code == 1) {
      state = HomePageState(
          postDailyList: responseDtoDaily.data,
          postBusinessList: responseDtoBusiness.data);
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
