import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/join_custom_form.dart';
import 'package:flutter_midium_project/models/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            JoinCustomForm(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Join"),
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
