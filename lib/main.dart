import 'package:flutter/material.dart';
import 'package:flutter_midium_project/core/theme.dart';
import 'package:flutter_midium_project/view/pages/join_page/join_page.dart';
import 'package:flutter_midium_project/view/pages/login_page/login_page.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/main_holder_page.dart';
import 'package:flutter_midium_project/view/pages/post_write_page/post_write_page.dart';
import 'package:flutter_midium_project/view/pages/setting_page/setting_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
        "/main": (context) => MainHolderPage(),
        "/setting": (context) => SettingPage(),
        "/write": (context) => PostWritePage(),
      },
    );
  }
}
