import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/models/size.dart';

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
            SizedBox(height: medium_gap),
            CustomTextFormField("ID"),
            SizedBox(height: medium_gap),
            CustomTextFormField("Password"),
            SizedBox(height: medium_gap),
            CustomTextFormField("E-mail"),
            SizedBox(height: medium_gap),
            CustomTextFormField("Name"),
            SizedBox(height: medium_gap),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
