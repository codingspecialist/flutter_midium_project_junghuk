import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final text;
  const CustomButton(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
