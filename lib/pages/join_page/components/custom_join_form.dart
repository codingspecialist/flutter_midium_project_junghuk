import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_button.dart';
import 'package:flutter_midium_project/components/custom_text_button.dart';
import 'package:flutter_midium_project/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/models/size.dart';

class CustomJoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildHeader(),
            CustomTextFormField("Username"),
            CustomTextFormField("Password"),
            CustomTextFormField("Email"),
            CustomTextFormField("Nick Name"),
            SizedBox(height: large_gap),
            CustomButton(() {}, "회원가입"),
            CustomTextButton(() {}, "로그인 페이지로 이동"),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/cat4.jpg",
          width: 100,
          height: 100,
        ),
        Container(
          child: (Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  "Medium",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
