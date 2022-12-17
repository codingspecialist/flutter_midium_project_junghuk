class PostLove {
  PostLove({
    required this.postId,
    required this.loveId,
    required this.userId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.nickname,
    required this.profileImg,
  });

  int postId;
  int loveId;
  int userId;
  String postTitle;
  String postContent;
  String postThumnail;
  String nickname;
  String profileImg;

  factory PostLove.fromJson(Map<String, dynamic> json) => PostLove(
        postId: json["postId"],
        loveId: json["loveId"],
        userId: json["userId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        nickname: json["nickname"],
        profileImg: json["profileImg"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "loveId": loveId,
        "userId": userId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "nickname": nickname,
        "profileImg": profileImg,
      };
}
