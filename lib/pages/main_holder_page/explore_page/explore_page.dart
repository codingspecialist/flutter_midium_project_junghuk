import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_post_text_view.dart';
import 'package:flutter_midium_project/pages/post_search_page/post_search_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) => CustomPostTextView(),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 10)),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("Explorer"),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            showSearch(
              context: context,
              delegate: PostSearchPage(),
            );
          },
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(
          icon: Icon(
            CupertinoIcons.settings_solid,
            size: 22,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
      automaticallyImplyLeading: false,
    );
  }
}
