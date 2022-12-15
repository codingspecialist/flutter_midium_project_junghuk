import 'package:flutter/material.dart';

class CustomEditButton extends StatelessWidget {
  final void Function()? move;
  const CustomEditButton(this.move, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 30,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: move,
          child: const Text('Edit your Profile'),
          style: ElevatedButton.styleFrom(
            primary: Colors.white38,
          ),
        ),
      ),
    );
  }
}
