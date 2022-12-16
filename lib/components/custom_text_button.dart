import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final text;
  final void Function()? action;
  const CustomTextButton(this.action, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black45,
        ),
      ),
    );
  }
}
