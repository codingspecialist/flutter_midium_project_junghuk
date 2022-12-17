import 'package:flutter/cupertino.dart';
import 'package:flutter_midium_project/core/http_connector.dart';
import 'package:flutter_midium_project/dto/response_dto.dart';
import 'package:flutter_midium_project/main.dart';
import 'package:flutter_midium_project/model/session_user.dart';
import 'package:flutter_midium_project/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

const secureStorage = FlutterSecureStorage();

final authProvider = StateNotifierProvider<AuthProvider, SessionUser>((ref) {
  return AuthProvider(SessionUser(null, null, false));
});

class AuthProvider extends StateNotifier<SessionUser> {
  final mContext = navigatorKey.currentContext;
  AuthProvider(super.state);

  Future<void> authentication(SessionUser sessionUser) async {
    state = sessionUser;
    await secureStorage.write(key: "jwtToken", value: sessionUser.jwtToken);
  }

  Future<void> inValidate() async {
    state = SessionUser(null, null, false);
    await secureStorage.delete(key: "jwtToken");
  }
}
