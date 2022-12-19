import 'package:flutter/material.dart';
import 'package:flutter_midium_project/core/size.dart';

class CustomTextFormFieldColor extends StatelessWidget {
  final String text;
  final controller;
  final void Function(String)? search;
  const CustomTextFormFieldColor(this.search, this.text, {this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextFormField(
        onChanged: search,
        controller: controller,
        validator: (value) => value!.isEmpty ? "Please enter some text" : null,
        obscureText: text == "Password" ? true : false,
        decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          hintText: "Enter $text",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
