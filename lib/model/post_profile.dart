class PostProfile {
  PostProfile({
    required this.username,
    required this.nickname,
    required this.email,
    required this.profileImg,
    required this.myVisitListDto,
    required this.myPostListDto,
    required this.my,
    required this.subscribe,
  });

  String username;
  String nickname;
  String email;
  String profileImg;
  List<MyVisitListDto> myVisitListDto;
  List<MyPostListDto> myPostListDto;
  bool my;
  bool subscribe;

  factory PostProfile.fromJson(Map<String, dynamic> json) => PostProfile(
        username: json["username"],
        nickname: json["nickname"],
        email: json["email"],
        profileImg: json["profileImg"],
        myVisitListDto: List<MyVisitListDto>.from(
            json["myVisitListDto"].map((x) => MyVisitListDto.fromJson(x))),
        myPostListDto: List<MyPostListDto>.from(
            json["myPostListDto"].map((x) => MyPostListDto.fromJson(x))),
        my: json["my"],
        subscribe: json["subscribe"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "nickname": nickname,
        "email": email,
        "profileImg": profileImg,
        "myVisitListDto":
            List<dynamic>.from(myVisitListDto.map((x) => x.toJson())),
        "myPostListDto":
            List<dynamic>.from(myPostListDto.map((x) => x.toJson())),
        "my": my,
        "subscribe": subscribe,
      };
}

class MyPostListDto {
  MyPostListDto({
    required this.postId,
    required this.userId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.role,
    required this.updatedAt,
  });

  int postId;
  int userId;
  String postTitle;
  String postContent;
  String postThumnail;
  String role;
  DateTime updatedAt;

  factory MyPostListDto.fromJson(Map<String, dynamic> json) => MyPostListDto(
        postId: json["postId"],
        userId: json["userId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        role: json["role"],
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "userId": userId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "role": role,
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class MyVisitListDto {
  MyVisitListDto({
    required this.postId,
    required this.userId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.username,
    required this.nickname,
    required this.profileImg,
  });

  int postId;
  int userId;
  String postTitle;
  String postContent;
  String postThumnail;
  String username;
  String nickname;
  String profileImg;

  factory MyVisitListDto.fromJson(Map<String, dynamic> json) => MyVisitListDto(
        postId: json["postId"],
        userId: json["userId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        username: json["username"],
        nickname: json["nickname"],
        profileImg: json["profileImg"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "userId": userId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "username": username,
        "nickname": nickname,
        "profileImg": profileImg,
      };
}
