import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget mainHolderBottomNavigation(
    int selectedIndex, void Function(int) action) {
  return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // currentIndex: (),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.bookmark),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          label: " ",
        ),
      ],
      currentIndex: selectedIndex,
      onTap: action);
}
