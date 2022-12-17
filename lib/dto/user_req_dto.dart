////////////////////////////////////////////////////////////////////////////////

class JoinReqDto {
  JoinReqDto({
    required this.username,
    required this.password,
    required this.nickname,
    required this.email,
  });

  String username;
  String password;
  String nickname;
  String email;

  factory JoinReqDto.fromJson(Map<String, dynamic> json) => JoinReqDto(
        username: json["username"],
        password: json["password"],
        nickname: json["nickname"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "nickname": nickname,
        "email": email,
      };
}

////////////////////////////////////////////////////////////////////////////////

class LoginReqDto {
  LoginReqDto({
    required this.username,
    required this.password,
  });

  String username;
  String password;

  factory LoginReqDto.fromJson(Map<String, dynamic> json) => LoginReqDto(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}
////////////////////////////////////////////////////////////////////////////////
