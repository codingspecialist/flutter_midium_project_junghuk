import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_form.dart';
import 'package:flutter_midium_project/models/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CustomForm(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Login"),
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
