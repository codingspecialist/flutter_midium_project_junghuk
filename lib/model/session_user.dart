import 'package:flutter_midium_project/model/user.dart';

class SessionUser {
  final User? _user;
  final String? _jwtToken;
  final bool? _isLogin;

  SessionUser(this._user, this._jwtToken, this._isLogin);

  User get user => _user!;
  String get jwtToken => _jwtToken!;
  bool get isLogin => _isLogin!;
}
