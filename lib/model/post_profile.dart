class PostProfile {
  PostProfile({
    required this.userId,
    required this.username,
    required this.nickname,
    required this.email,
    required this.profileImg,
    required this.myVisitListDto,
    required this.myPostListDto,
    required this.my,
    required this.subscribe,
  });

  int userId;
  String username;
  String nickname;
  String email;
  String profileImg;
  List<MyTListDto> myVisitListDto;
  List<MyTListDto> myPostListDto;
  bool my;
  bool subscribe;

  factory PostProfile.fromJson(Map<String, dynamic> json) => PostProfile(
        userId: json["userId"],
        username: json["username"],
        nickname: json["nickname"],
        email: json["email"],
        profileImg: json["profileImg"],
        myVisitListDto: List<MyTListDto>.from(
            json["myVisitListDto"].map((x) => MyTListDto.fromJson(x))),
        myPostListDto: List<MyTListDto>.from(
            json["myPostListDto"].map((x) => MyTListDto.fromJson(x))),
        my: json["my"],
        subscribe: json["subscribe"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
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

class MyTListDto {
  MyTListDto({
    required this.ownerUserId,
    required this.postId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.role,
    required this.updatedAt,
  });

  int ownerUserId;
  int postId;
  String postTitle;
  String postContent;
  String postThumnail;
  String role;
  DateTime updatedAt;

  factory MyTListDto.fromJson(Map<String, dynamic> json) => MyTListDto(
        ownerUserId: json["ownerUserId"],
        postId: json["postId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        role: json["role"],
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "ownerUserId": ownerUserId,
        "postId": postId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "role": role,
        "updatedAt": updatedAt.toIso8601String(),
      };
}
