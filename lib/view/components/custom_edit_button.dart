import 'package:flutter/material.dart';

class CustomEditButton extends StatelessWidget {
  final void Function()? action;
  final text;
  const CustomEditButton(this.action, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 30,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: action,
          child: Text('${text}'),
          style: ElevatedButton.styleFrom(
            primary: Colors.white38,
          ),
        ),
      ),
    );
  }
}
