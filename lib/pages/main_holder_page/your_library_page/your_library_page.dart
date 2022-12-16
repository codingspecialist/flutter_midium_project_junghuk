import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_post_text_view.dart';
import 'package:flutter_midium_project/pages/main_holder_page/main_holder_appbar.dart';

class YourLibraryPage extends StatelessWidget {
  const YourLibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: mainHolderAppBar(context, "북마크"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemBuilder: (context, index) => CustomPostTextView(index),
            itemCount: 10),
      ),
    );
  }
}
