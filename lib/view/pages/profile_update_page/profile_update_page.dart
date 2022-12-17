import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/view/components/custom_button.dart';
import 'package:flutter_midium_project/core/size.dart';

class ProfileUpdatelPage extends StatelessWidget {
  ProfileUpdatelPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("ProfileUpdate"),
      ),
      body: _buildBody(),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        SizedBox(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: xlarge_gap),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage("assets/images/cat1.jpg"),
                  ),
                ),
                SizedBox(height: medium_gap),
                CustomButton(() {}, "이미지등록"),
              ],
            ),
          ),
        ),
        SizedBox(),
      ],
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
