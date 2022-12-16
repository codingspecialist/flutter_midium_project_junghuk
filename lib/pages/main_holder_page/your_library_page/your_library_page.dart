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
      appBar: mainHolderAppBar(context, "Library"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => CustomPostTextView(index),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Your library"),
      actions: [
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
