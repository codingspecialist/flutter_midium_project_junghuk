import 'package:flutter/material.dart';

class CustomFollowButton extends StatelessWidget {
  final bool isFollow;
  final void Function()? action;
  const CustomFollowButton(
    this.action,
    this.isFollow, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 25,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF033B0B),
          ),
          child: Text(
            isFollow ? "follow" : "unFollow",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: action,
        ),
      ),
    );
  }
}
