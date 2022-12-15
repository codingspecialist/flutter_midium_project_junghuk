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
            CircleAvatar(
              radius: 60,
            ),
            SizedBox(height: medium_gap),
            CustomButton("이미지등록"),
            SizedBox(height: xlarge_gap),
            CustomTextFormField("E-mail"),
            SizedBox(height: medium_gap),
            CustomTextFormField("Nick Name"),
            SizedBox(height: medium_gap),
            CustomTextFormField("Password"),
            SizedBox(height: medium_gap),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                CustomTextButton("수정완료"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
