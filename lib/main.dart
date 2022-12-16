import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/post/post_text_view.dart';
import 'package:flutter_midium_project/components/post/post_view.dart';
import 'package:flutter_midium_project/components/text/text_detail_page.dart';
import 'package:flutter_midium_project/components/text/text_page.dart';
import 'package:flutter_midium_project/components/post/post_detail.dart';
import 'package:flutter_midium_project/home_page.dart';
import 'package:flutter_midium_project/pages/explore_page.dart';
import 'package:flutter_midium_project/pages/join_page.dart';
import 'package:flutter_midium_project/pages/login_page.dart';
import 'package:flutter_midium_project/pages/main_page.dart';
import 'package:flutter_midium_project/pages/profile_detail_page.dart';
import 'package:flutter_midium_project/pages/profile_page.dart';
import 'package:flutter_midium_project/pages/setting_page.dart';
import 'package:flutter_midium_project/pages/your_library_page.dart';

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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.black,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white, fontSize: 24),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: LoginPage(),
    );
  }
}
