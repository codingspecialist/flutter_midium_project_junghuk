class PostLove {
  PostLove({
    required this.ownerUserId,
    required this.postId,
    required this.loveId,
    required this.postTitle,
    required this.postContent,
    required this.postThumnail,
    required this.nickname,
    required this.profileImg,
  });

  int ownerUserId;
  int postId;
  int loveId;
  String postTitle;
  String postContent;
  String postThumnail;
  String nickname;
  String profileImg;

  factory PostLove.fromJson(Map<String, dynamic> json) => PostLove(
        ownerUserId: json["ownerUserId"],
        postId: json["postId"],
        loveId: json["loveId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        postThumnail: json["postThumnail"],
        nickname: json["nickname"],
        profileImg: json["profileImg"],
      );

  Map<String, dynamic> toJson() => {
        "ownerUserId": ownerUserId,
        "postId": postId,
        "loveId": loveId,
        "postTitle": postTitle,
        "postContent": postContent,
        "postThumnail": postThumnail,
        "nickname": nickname,
        "profileImg": profileImg,
      };
}
