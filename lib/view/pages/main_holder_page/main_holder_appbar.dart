import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar mainHolderAppBar(BuildContext context, String title) {
  return AppBar(
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