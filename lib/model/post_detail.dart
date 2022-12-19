class PostDetail {
  PostDetail({
    required this.ownerUserId,
    required this.postId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.role,
    required this.createdAt,
    required this.username,
    required this.nickname,
    required this.profileImg,
  });

  int ownerUserId;
  int postId;
  String postTitle;
  String postContent;
  String postThumnail;
  String role;
  DateTime createdAt;
  String username;
  String nickname;
  String profileImg;

  factory PostDetail.fromJson(Map<String, dynamic> json) => PostDetail(
        ownerUserId: json["ownerUserId"],
        postId: json["postId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        role: json["role"],
        createdAt: DateTime.parse(json["createdAt"]),
        username: json["username"],
        nickname: json["nickname"],
        profileImg: json["profileImg"],
      );

  Map<String, dynamic> toJson() => {
        "ownerUserId": ownerUserId,
        "postId": postId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "role": role,
        "createdAt": createdAt.toIso8601String(),
        "username": username,
        "nickname": nickname,
        "profileImg": profileImg,
      };
}
