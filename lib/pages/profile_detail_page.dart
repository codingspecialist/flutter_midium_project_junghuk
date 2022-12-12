import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/profile_detail_form.dart';
import 'package:flutter_midium_project/models/size.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          SizedBox(),
          ProfileDetailForm(),
          SizedBox(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Profile Detail"),
    actions: [
      IconButton(
        icon: Icon(
          CupertinoIcons.back,
          size: 23,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
