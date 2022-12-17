import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/home_page/home_page.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/profile_page/profile_page.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/your_library_page/your_library_page.dart';

import 'main_holder_bottom_navigation.dart';

class MainHolderPage extends StatefulWidget {
  const MainHolderPage({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainHolderPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          YourLibraryPage(),
          ProfilePage(),
        ],
      ),
      floatingActionButton: _floatingActionButton(),
      bottomNavigationBar: mainHolderBottomNavigation(_selectedIndex, (index) {
        setState(() {
          _selectedIndex = index;
        });
      }),
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, "/write");
      },
      backgroundColor: Color(0xFF033B0B),
      child: const Icon(
        CupertinoIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
