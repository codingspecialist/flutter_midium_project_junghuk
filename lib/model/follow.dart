class Follow {
  Follow({
    required this.subscribeId,
    required this.userId,
    required this.usersId,
  });

  int subscribeId;
  int userId;
  int usersId;

  factory Follow.fromJson(Map<String, dynamic> json) => Follow(
        subscribeId: json["subscribeId"],
        userId: json["userId"],
        usersId: json["usersId"],
      );

  Map<String, dynamic> toJson() => {
        "subscribeId": subscribeId,
        "userId": userId,
        "usersId": usersId,
      };
}
