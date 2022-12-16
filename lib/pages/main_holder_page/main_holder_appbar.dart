import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/pages/post_search_page/post_search_page.dart';

AppBar mainHolderAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(title),
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
      const SizedBox(
        width: 8,
      ),
      IconButton(
        icon: const Icon(
          CupertinoIcons.settings_solid,
          size: 22,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/setting");
        },
      ),
    ],
    automaticallyImplyLeading: false,
  );
}
