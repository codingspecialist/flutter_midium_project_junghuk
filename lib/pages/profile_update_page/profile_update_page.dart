import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/pages/profile_update_page/components/profile_image_form.dart';
import 'package:flutter_midium_project/models/size.dart';

class ProfileUpdatelPage extends StatelessWidget {
  const ProfileUpdatelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("ProfileUpdate"),
      ),
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
    title: Text("ProfileUpdate"),
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
  );
}
