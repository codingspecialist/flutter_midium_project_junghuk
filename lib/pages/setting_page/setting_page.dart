import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_text_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Setting"),
      ),
      backgroundColor: Colors.white10,
      body: Container(
        width: double.infinity,
        height: 40,
        color: Colors.grey,
        child: Row(
          children: [
            SizedBox(width: 10),
            CustomTextButton(() {}, "Logout"),
          ],
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Text("Setting"),
  );
}
