import 'package:flutter/material.dart';
import 'package:flutter_midium_project/core/theme.dart';
import 'package:flutter_midium_project/pages/main_holder_page/main_holder_page.dart';
import 'package:flutter_midium_project/pages/post_detail_page/post_detail_page.dart';
import 'package:flutter_midium_project/pages/post_write_page/post_write_page.dart';
import 'package:flutter_midium_project/pages/profile_update_page/profile_update_page.dart';
import 'package:flutter_midium_project/pages/setting_page/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/main",
      routes: {
        "/main": (context) => MainHolderPage(),
        "/setting": (context) => SettingPage(),
        "/write": (context) => PostWritePage(),
      },
    );
  }
}
