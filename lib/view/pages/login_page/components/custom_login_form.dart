import 'package:flutter/material.dart';
import 'package:flutter_midium_project/controller/user_controller.dart';
import 'package:flutter_midium_project/view/components/custom_button.dart';
import 'package:flutter_midium_project/view/components/custom_text_button.dart';
import 'package:flutter_midium_project/view/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/core/size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomLoginForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserController userCT = ref.read(userController);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildHeader(),
            CustomTextFormField(
              "Username",
              controller: _username,
            ),
            CustomTextFormField(
              "Password",
              controller: _password,
            ),
            SizedBox(height: large_gap),
            CustomButton(() {
              userCT.login(
                  username: _username.text.trim(),
                  password: _password.text.trim());
            }, "로그인"),
            CustomTextButton(() {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/join", (route) => false);
            }, "회원가입 페이지로 이동"),
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
