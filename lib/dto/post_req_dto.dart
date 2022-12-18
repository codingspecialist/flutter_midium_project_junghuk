class PostWriteReqDto {
  PostWriteReqDto({
    required this.userId,
    required this.postTitle,
    required this.postContent,
    required this.role,
  });

  int userId;
  String postTitle;
  String postContent;
  String role;

  factory PostWriteReqDto.fromJson(Map<String, dynamic> json) =>
      PostWriteReqDto(
        userId: json["userId"],
        postTitle: json["postTitle"],
        postContent: json["postContent"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "postTitle": postTitle,
        "postContent": postContent,
        "role": role,
      };
}
