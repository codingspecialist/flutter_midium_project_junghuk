import 'package:flutter_midium_project/core/http_connector.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/model/post.dart';
import 'package:flutter_midium_project/model/post_love.dart';
import 'package:flutter_midium_project/model/post_profile.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class PostService {
  final HttpConnector httpConnector = HttpConnector();

  static final PostService _instance = PostService._single();
  PostService._single();
  factory PostService() {
    return _instance;
  }

  Future<ResponseDto> fetchPostDailyList(String jwtToken) async {
    Response response =
        await httpConnector.get("/s/post/dailyListForm", jwtToken: jwtToken);

    ResponseDto responseDto = toResponseDto(response);
    if (responseDto.code == 1) {
      List<dynamic> mapList = responseDto.data; // dynamic
      List<Post> postList = mapList.map((e) => Post.fromJson(e)).toList();
      responseDto.data = postList;
    }

    return responseDto;
  }

  Future<ResponseDto> fetchPostBusinessList(String jwtToken) async {
    Response response =
        await httpConnector.get("/s/post/businessListForm", jwtToken: jwtToken);

    ResponseDto responseDto = toResponseDto(response);
    if (responseDto.code == 1) {
      List<dynamic> mapList = responseDto.data; // dynamic
      List<Post> postList = mapList.map((e) => Post.fromJson(e)).toList();
      responseDto.data = postList;
    }

    return responseDto;
  }

  Future<ResponseDto> fetchPost(int postId, String jwtToken) async {
    Response response =
        await httpConnector.get("/post/$postId", jwtToken: jwtToken);
    ResponseDto responseDto = toResponseDto(response);
    if (responseDto.code == 1) {
      responseDto.data = Post.fromJson(responseDto.data);
    }
    return responseDto;
  }

  Future<ResponseDto> fetchPostLoveList(String jwtToken) async {
    Response response =
        await httpConnector.get("/s/love/listForm", jwtToken: jwtToken);

    ResponseDto responseDto = toResponseDto(response);
    if (responseDto.code == 1) {
      List<dynamic> mapList = responseDto.data; // dynamic
      List<PostLove> postLoveList =
          mapList.map((e) => PostLove.fromJson(e)).toList();
      responseDto.data = postLoveList;
    }

    return responseDto;
  }

  Future<ResponseDto> fetchPostProfileList(String jwtToken, int userId) async {
    Response response = await httpConnector
        .get("/s/post/profileListForm/$userId", jwtToken: jwtToken);

    Logger().d(response.body);
    ResponseDto responseDto = toResponseDto(response);

    if (responseDto.code == 1) {
      Logger().d("fetchPostProfileList 통신성공");
      PostProfile postProfile =
          PostProfile.fromJson(responseDto.data); // dynamic
      responseDto.data = postProfile;
      Logger().d("길이");
      Logger().d(postProfile.myPostListDto.length);
      Logger().d(postProfile.myVisitListDto.length);
    }

    return responseDto;
  }

  // Future<ResponseDto> fetchDeletePost(int postId, String jwtToken) async {
  //   Response response =
  //       await httpConnector.delete("/post/$postId", jwtToken: jwtToken);
  //   return toResponseDto(response);
  // }

  // Future<ResponseDto> fetchWritePost(
  //     PostWriteReqDto postWriteReqDto, String jwtToken) async {
  //   String requestBody = jsonEncode(postWriteReqDto.toJson());
  //   Response response =
  //       await httpConnector.post("/post", requestBody, jwtToken: jwtToken);
  //   ResponseDto responseDto = toResponseDto(response);
  //   if (responseDto.code == 1) {
  //     responseDto.data = Post.fromJson(responseDto.data);
  //   }
  //   return responseDto;
  // }

  // Future<ResponseDto> fetchUpdatePost(
  //     int id, PostUpdateReqDto postUpdateReqDto, String jwtToken) async {
  //   String requestBody = jsonEncode(postUpdateReqDto.toJson());
  //   Response response =
  //       await httpConnector.put("/post/$id", requestBody, jwtToken: jwtToken);
  //   ResponseDto responseDto = toResponseDto(response);
  //   if (responseDto.code == 1) {
  //     responseDto.data = Post.fromJson(responseDto.data);
  //   }
  //   return responseDto;
  // }
}
