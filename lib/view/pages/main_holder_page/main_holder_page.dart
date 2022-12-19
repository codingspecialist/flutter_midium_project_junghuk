import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/home_page/home_page.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/profile_page/profile_page.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/search_page/search_page.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/your_library_page/your_library_page.dart';
import 'package:logger/logger.dart';

import 'main_holder_bottom_navigation.dart';

class MainHolderPage extends StatefulWidget {
  const MainHolderPage({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainHolderPage> {
  int _selectedIndex = 0;
  List loadedPages = [0];

  @override
  Widget build(BuildContext context) {
    Logger().d("디버그 : MainHolderPage 실행됨");
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomePage(),
          loadedPages.contains(1) ? const YourLibraryPage() : Container(),
          loadedPages.contains(2) ? const SearchPage() : Container(),
          loadedPages.contains(3) ? const ProfilePage() : Container(),
        ],
      ),
      floatingActionButton: _floatingActionButton(),
      bottomNavigationBar: mainHolderBottomNavigation(_selectedIndex, (index) {
        var pages = loadedPages;
        if (!pages.contains(index)) {
          pages.add(index);
        }
        setState(() {
          _selectedIndex = index;
          loadedPages = pages;
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
