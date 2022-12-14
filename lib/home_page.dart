import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/post/post_detail.dart';
import 'package:flutter_midium_project/pages/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MainPage(),
      ],
    );
  }
}
