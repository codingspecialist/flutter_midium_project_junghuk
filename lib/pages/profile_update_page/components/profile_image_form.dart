import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_button.dart';
import 'package:flutter_midium_project/components/custom_text_button.dart';
import 'package:flutter_midium_project/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/models/size.dart';
import 'package:flutter_midium_project/models/user.dart';

class ProfileDetailForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
