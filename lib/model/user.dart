class User {
  User({
    required this.userId,
    required this.username,
  });

  int userId;
  String username;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "username": username,
      };
}
