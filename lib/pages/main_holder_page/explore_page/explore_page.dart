import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_post_text_view.dart';
import 'package:flutter_midium_project/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_midium_project/pages/main_holder_page/explore_page/post_search_delegate.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainHolderAppBar(context, "검색"),
      backgroundColor: Colors.black,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => CustomPostTextView(index),
      ),
    );
  }

  Widget _buildSearch(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              "검색을 시작하세요",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          IconButton(
            iconSize: 100,
            onPressed: () {
              showSearch(
                context: context,
                delegate: PostSearchDelegate(),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
