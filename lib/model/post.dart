class Post {
  Post({
    required this.ownerUserId,
    required this.postId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.role,
    required this.profileImg,
    required this.nickname,
    required this.createdAt,
  });

  int ownerUserId;
  int postId;
  String postTitle;
  String postContent;
  String postThumnail;
  String role;
  String profileImg;
  String nickname;
  DateTime createdAt;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        ownerUserId: json["ownerUserId"],
        postId: json["postId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        role: json["role"],
        profileImg: json["profileImg"],
        nickname: json["nickname"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "ownerUserId": ownerUserId,
        "postId": postId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "role": role,
        "profileImg": profileImg,
        "nickname": nickname,
        "createdAt": createdAt.toIso8601String(),
      };
}
