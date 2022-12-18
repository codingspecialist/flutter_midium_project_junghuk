import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar mainHolderAppBar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.back_hand,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(title),
    actions: [
      const SizedBox(
        width: 8,
      ),
      IconButton(
        icon: const Icon(
          CupertinoIcons.settings_solid,
          size: 22,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/setting");
        },
      ),
    ],
    automaticallyImplyLeading: false,
  );
}
