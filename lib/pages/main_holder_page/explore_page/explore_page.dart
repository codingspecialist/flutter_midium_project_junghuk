import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_post_text_view.dart';
import 'package:flutter_midium_project/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_midium_project/pages/post_search_page/post_search_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainHolderAppBar(context, "Explorer"),
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemBuilder: (context, index) => CustomPostTextView(),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 10)),
    );
  }
}
